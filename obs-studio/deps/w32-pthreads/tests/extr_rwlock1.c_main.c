
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ pthread_rwlock_destroy (int **) ;
 scalar_t__ pthread_rwlock_init (int **,int *) ;
 int * rwlock ;

int
main()
{
  assert(rwlock == ((void*)0));

  assert(pthread_rwlock_init(&rwlock, ((void*)0)) == 0);

  assert(rwlock != ((void*)0));

  assert(pthread_rwlock_destroy(&rwlock) == 0);

  assert(rwlock == ((void*)0));

  return 0;
}
