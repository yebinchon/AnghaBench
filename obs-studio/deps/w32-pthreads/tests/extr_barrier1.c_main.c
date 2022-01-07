
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int * barrier ;
 scalar_t__ pthread_barrier_destroy (int **) ;
 scalar_t__ pthread_barrier_init (int **,int *,int) ;

int
main()
{
  assert(barrier == ((void*)0));

  assert(pthread_barrier_init(&barrier, ((void*)0), 1) == 0);

  assert(barrier != ((void*)0));

  assert(pthread_barrier_destroy(&barrier) == 0);

  assert(barrier == ((void*)0));

  return 0;
}
