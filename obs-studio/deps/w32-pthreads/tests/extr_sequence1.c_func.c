
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InterlockedIncrement (int *) ;
 int done ;
 scalar_t__ pthread_getunique_np (int ) ;
 int pthread_self () ;
 int sched_yield () ;
 int* seqmap ;

void * func(void * arg)
{
  sched_yield();
  seqmap[(int)pthread_getunique_np(pthread_self())] = 1;
  InterlockedIncrement(&done);

  return (void *) 0;
}
