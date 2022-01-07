
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PTHREAD_BARRIER_SERIAL_THREAD ;
 int assert (int) ;
 int barrier ;
 scalar_t__ pthread_barrier_destroy (int *) ;
 scalar_t__ pthread_barrier_init (int *,int *,int) ;
 scalar_t__ pthread_barrier_wait (int *) ;

int
main()
{
  assert(pthread_barrier_init(&barrier, ((void*)0), 1) == 0);

  assert(pthread_barrier_wait(&barrier) == PTHREAD_BARRIER_SERIAL_THREAD);

  assert(pthread_barrier_destroy(&barrier) == 0);

  return 0;
}
