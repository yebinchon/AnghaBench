
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int barrier ;
 scalar_t__ pthread_barrier_wait (int *) ;

void * func(void * arg)
{
  return (void *) (size_t)pthread_barrier_wait(&barrier);
}
