## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this function create a list of function that
## 1. set value of the matrix
## 2. get value of the matrix
## 3. get Inverse of th matrix
## 4. set Inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setInverse <- function(p_inverse) inverse <<- p_inverse
  getInverse <- function() inverse
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

## this function calculate the inverse of the matrix
## if the value has been calculated, it returns the value from cache
## else it calculates the new one and cache it

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  matrix <- x$get()
  inverse <- solve(matrix)
  x$setInverse(inverse)
  inverse
}
