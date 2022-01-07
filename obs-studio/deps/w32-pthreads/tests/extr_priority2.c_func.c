
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {scalar_t__ sched_priority; } ;


 int PTHREAD_BARRIER_SERIAL_THREAD ;
 int SCHED_OTHER ;
 int assert (int) ;
 int endBarrier ;
 int pthread_barrier_wait (int *) ;
 scalar_t__ pthread_getschedparam (int ,int*,struct sched_param*) ;
 int pthread_self () ;
 int startBarrier ;

void * func(void * arg)
{
  int policy;
  int result;
  struct sched_param param;

  result = pthread_barrier_wait(&startBarrier);
  assert(result == 0 || result == PTHREAD_BARRIER_SERIAL_THREAD);
  assert(pthread_getschedparam(pthread_self(), &policy, &param) == 0);
  assert(policy == SCHED_OTHER);
  result = pthread_barrier_wait(&endBarrier);
  assert(result == 0 || result == PTHREAD_BARRIER_SERIAL_THREAD);
  return (void *) (size_t)param.sched_priority;
}
