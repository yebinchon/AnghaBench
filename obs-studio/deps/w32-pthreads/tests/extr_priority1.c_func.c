
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {scalar_t__ sched_priority; } ;
typedef int pthread_t ;


 int SCHED_OTHER ;
 int assert (int) ;
 scalar_t__ pthread_getschedparam (int ,int*,struct sched_param*) ;
 int pthread_self () ;

void *
func(void * arg)
{
  int policy;
  struct sched_param param;
  pthread_t threadID = pthread_self();

  assert(pthread_getschedparam(threadID, &policy, &param) == 0);
  assert(policy == SCHED_OTHER);
  return (void *) (size_t)(param.sched_priority);
}
