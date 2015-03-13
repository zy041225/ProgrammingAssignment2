## Put comments here that give an overall description of what your
## functions do
## The functions do store and calculate the matrix and its possible inverse 

## The mackCacheMatrix stores the matrix or its inverse one by using the set() 
## setinverse(), it can also get the stored or calculated one by using get() or 
## getinverse()

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() {
    x
  }
  setinverse <- function(inverse) {
    i <<- inverse
  }
  getinverse <- function(){
    i
  }
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## the cacheSolve check if the inversed matrix is in cache or not and will
## calculate the inversion when there's no inversed matrix, and also store 
## the calculating result

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
  }
  else{
    data <- x$get()
    i <- solve(data)
    x$setinverse(i)
  }
  i
}
