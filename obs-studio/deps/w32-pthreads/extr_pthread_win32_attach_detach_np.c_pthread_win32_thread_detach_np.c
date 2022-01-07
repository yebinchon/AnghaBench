
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ detachState; int ptHandle; TYPE_1__* robustMxList; int state; int stateLock; } ;
typedef TYPE_3__ ptw32_thread_t ;
typedef int ptw32_mcs_local_node_t ;
typedef TYPE_4__* pthread_mutex_t ;
struct TYPE_13__ {int key; } ;
struct TYPE_12__ {int event; TYPE_2__* robustNode; } ;
struct TYPE_10__ {int stateInconsistent; } ;
struct TYPE_9__ {TYPE_4__* mx; } ;
typedef int PTW32_INTERLOCKED_LONGPTR ;
typedef int PTW32_INTERLOCKED_LONG ;
typedef int BOOL ;


 scalar_t__ PTHREAD_CREATE_DETACHED ;
 int PTW32_INTERLOCKED_EXCHANGE_LONG (int ,int ) ;
 int PThreadStateLast ;
 int SetEvent (int ) ;
 int TRUE ;
 int TlsSetValue (int ,int *) ;
 scalar_t__ pthread_getspecific (TYPE_5__*) ;
 int ptw32_callUserDestroyRoutines (int ) ;
 int ptw32_mcs_lock_acquire (int *,int *) ;
 int ptw32_mcs_lock_release (int *) ;
 scalar_t__ ptw32_processInitialized ;
 int ptw32_robust_mutex_remove (TYPE_4__**,TYPE_3__*) ;
 TYPE_5__* ptw32_selfThreadKey ;
 int ptw32_threadDestroy (int ) ;

BOOL
pthread_win32_thread_detach_np ()
{
  if (ptw32_processInitialized)
    {




      ptw32_thread_t * sp = (ptw32_thread_t *) pthread_getspecific (ptw32_selfThreadKey);

      if (sp != ((void*)0))
 {
          ptw32_mcs_local_node_t stateLock;
   ptw32_callUserDestroyRoutines (sp->ptHandle);

   ptw32_mcs_lock_acquire (&sp->stateLock, &stateLock);
   sp->state = PThreadStateLast;




   ptw32_mcs_lock_release (&stateLock);




          while (sp->robustMxList != ((void*)0))
            {
              pthread_mutex_t mx = sp->robustMxList->mx;
              ptw32_robust_mutex_remove(&mx, sp);
              (void) PTW32_INTERLOCKED_EXCHANGE_LONG(
                       (PTW32_INTERLOCKED_LONGPTR)&mx->robustNode->stateInconsistent,
                       (PTW32_INTERLOCKED_LONG)-1);





              SetEvent(mx->event);
            }


   if (sp->detachState == PTHREAD_CREATE_DETACHED)
     {
       ptw32_threadDestroy (sp->ptHandle);

       TlsSetValue (ptw32_selfThreadKey->key, ((void*)0));
     }
 }
    }

  return TRUE;
}
