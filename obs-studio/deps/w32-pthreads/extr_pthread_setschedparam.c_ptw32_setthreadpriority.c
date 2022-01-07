
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sched_priority; int threadH; int threadLock; } ;
typedef TYPE_1__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
struct TYPE_5__ {scalar_t__ p; } ;
typedef TYPE_2__ pthread_t ;


 int EINVAL ;
 scalar_t__ SetThreadPriority (int ,int) ;
 int THREAD_PRIORITY_HIGHEST ;
 int THREAD_PRIORITY_IDLE ;
 int THREAD_PRIORITY_LOWEST ;
 int THREAD_PRIORITY_TIME_CRITICAL ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int sched_get_priority_max (int) ;
 int sched_get_priority_min (int) ;

int
ptw32_setthreadpriority (pthread_t thread, int policy, int priority)
{
  int prio;
  ptw32_mcs_local_node_t threadLock;
  int result = 0;
  ptw32_thread_t * tp = (ptw32_thread_t *) thread.p;

  prio = priority;


  if (prio < sched_get_priority_min (policy) ||
      prio > sched_get_priority_max (policy))
    {
      return EINVAL;
    }






  if (THREAD_PRIORITY_IDLE < prio && THREAD_PRIORITY_LOWEST > prio)
    {
      prio = THREAD_PRIORITY_LOWEST;
    }
  else if (THREAD_PRIORITY_TIME_CRITICAL > prio
    && THREAD_PRIORITY_HIGHEST < prio)
    {
      prio = THREAD_PRIORITY_HIGHEST;
    }



  ptw32_mcs_lock_acquire (&tp->threadLock, &threadLock);


  if (0 == SetThreadPriority (tp->threadH, prio))
    {
      result = EINVAL;
    }
  else
    {




      tp->sched_priority = priority;
    }

  ptw32_mcs_lock_release (&threadLock);

  return result;
}
