
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {long tv_sec; long tv_nsec; } ;
struct TYPE_4__ {scalar_t__ cancelState; scalar_t__ state; int stateLock; int cancelEvent; } ;
typedef TYPE_1__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
struct TYPE_5__ {int * p; } ;
typedef TYPE_2__ pthread_t ;
typedef long DWORD ;


 int EINVAL ;
 int ENOMEM ;
 int ESRCH ;
 scalar_t__ PTHREAD_CANCEL_DISABLE ;
 scalar_t__ PTHREAD_CANCEL_ENABLE ;
 int PTW32_EPS_CANCEL ;
 scalar_t__ PThreadStateCanceling ;
 int Sleep (long) ;
 long WAIT_OBJECT_0 ;
 long WAIT_TIMEOUT ;
 long WaitForSingleObject (int ,long) ;
 TYPE_2__ pthread_self () ;
 int pthread_testcancel () ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 int ptw32_throw (int ) ;

int
pthread_delay_np (struct timespec *interval)
{
  DWORD wait_time;
  DWORD secs_in_millisecs;
  DWORD millisecs;
  DWORD status;
  pthread_t self;
  ptw32_thread_t * sp;

  if (interval == ((void*)0))
    {
      return EINVAL;
    }

  if (interval->tv_sec == 0L && interval->tv_nsec == 0L)
    {
      pthread_testcancel ();
      Sleep (0);
      pthread_testcancel ();
      return (0);
    }


  secs_in_millisecs = (DWORD)interval->tv_sec * 1000L;


  millisecs = (interval->tv_nsec + 999999L) / 1000000L;
  if (0 > (wait_time = secs_in_millisecs + millisecs))
    {
      return EINVAL;
    }





  if (((void*)0) == (self = pthread_self ()).p)
    {
      return ENOMEM;
    }

  sp = (ptw32_thread_t *) self.p;

  if (sp->cancelState == PTHREAD_CANCEL_ENABLE)
    {




      if (WAIT_OBJECT_0 ==
   (status = WaitForSingleObject (sp->cancelEvent, wait_time)))
 {
          ptw32_mcs_local_node_t stateLock;



   ptw32_mcs_lock_acquire (&sp->stateLock, &stateLock);
   if (sp->state < PThreadStateCanceling)
     {
       sp->state = PThreadStateCanceling;
       sp->cancelState = PTHREAD_CANCEL_DISABLE;
       ptw32_mcs_lock_release (&stateLock);

       ptw32_throw (PTW32_EPS_CANCEL);
     }

   ptw32_mcs_lock_release (&stateLock);
   return ESRCH;
 }
      else if (status != WAIT_TIMEOUT)
 {
   return EINVAL;
 }
    }
  else
    {
      Sleep (wait_time);
    }

  return (0);
}
