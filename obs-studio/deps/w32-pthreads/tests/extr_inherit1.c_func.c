
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {scalar_t__ sched_priority; } ;


 int assert (int) ;
 scalar_t__ pthread_getschedparam (int ,int*,struct sched_param*) ;
 int pthread_self () ;

void * func(void * arg)
{
  int policy;
  struct sched_param param;

  assert(pthread_getschedparam(pthread_self(), &policy, &param) == 0);
  return (void *) (size_t)param.sched_priority;
}
