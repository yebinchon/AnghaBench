
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * PTHREAD_RWLOCK_INITIALIZER ;
 int assert (int) ;
 scalar_t__ pthread_rwlock_destroy (int **) ;
 scalar_t__ pthread_rwlock_rdlock (int **) ;
 scalar_t__ pthread_rwlock_unlock (int **) ;
 int * rwlock ;

int
main()
{
  assert(rwlock == PTHREAD_RWLOCK_INITIALIZER);

  assert(pthread_rwlock_rdlock(&rwlock) == 0);

  assert(rwlock != PTHREAD_RWLOCK_INITIALIZER);

  assert(rwlock != ((void*)0));

  assert(pthread_rwlock_unlock(&rwlock) == 0);

  assert(pthread_rwlock_destroy(&rwlock) == 0);

  assert(rwlock == ((void*)0));

  return 0;
}
