
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int pthread_t ;
typedef int HANDLE ;


 int GetThreadPriority (int ) ;
 int PTW32TEST_MAXPRIORITIES ;
 int SCHED_OTHER ;
 int assert (int) ;
 int maxPrio ;
 int minPrio ;
 int pthread_getw32threadhandle_np (int ) ;
 int pthread_self () ;
 scalar_t__ pthread_setschedparam (int ,int ,struct sched_param*) ;
 int * validPriorities ;

void *
getValidPriorities(void * arg)
{
  int prioSet;
  pthread_t thread = pthread_self();
  HANDLE threadH = pthread_getw32threadhandle_np(thread);
  struct sched_param param;

  for (prioSet = minPrio;
       prioSet <= maxPrio;
       prioSet++)
    {





        param.sched_priority = prioSet;
        assert(pthread_setschedparam(thread, SCHED_OTHER, &param) == 0);
        validPriorities[prioSet+(PTW32TEST_MAXPRIORITIES/2)] = GetThreadPriority(threadH);
    }

  return (void *) 0;
}
