
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int mutex; int wakeup; } ;
struct TYPE_6__ {int pgprocno; int procLatch; } ;
typedef TYPE_1__ PGPROC ;
typedef TYPE_2__ ConditionVariable ;


 int Assert (int) ;
 int ConditionVariableCancelSleep () ;
 TYPE_1__* MyProc ;
 int SetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int cvWaitLink ;
 int * cv_sleep_target ;
 int proclist_contains (int *,int,int ) ;
 int proclist_is_empty (int *) ;
 TYPE_1__* proclist_pop_head_node (int *,int ) ;
 int proclist_push_tail (int *,int,int ) ;

void
ConditionVariableBroadcast(ConditionVariable *cv)
{
 int pgprocno = MyProc->pgprocno;
 PGPROC *proc = ((void*)0);
 bool have_sentinel = 0;
 if (cv_sleep_target != ((void*)0))
  ConditionVariableCancelSleep();






 SpinLockAcquire(&cv->mutex);

 Assert(!proclist_contains(&cv->wakeup, pgprocno, cvWaitLink));

 if (!proclist_is_empty(&cv->wakeup))
 {
  proc = proclist_pop_head_node(&cv->wakeup, cvWaitLink);
  if (!proclist_is_empty(&cv->wakeup))
  {
   proclist_push_tail(&cv->wakeup, pgprocno, cvWaitLink);
   have_sentinel = 1;
  }
 }
 SpinLockRelease(&cv->mutex);


 if (proc != ((void*)0))
  SetLatch(&proc->procLatch);

 while (have_sentinel)
 {
  proc = ((void*)0);
  SpinLockAcquire(&cv->mutex);
  if (!proclist_is_empty(&cv->wakeup))
   proc = proclist_pop_head_node(&cv->wakeup, cvWaitLink);
  have_sentinel = proclist_contains(&cv->wakeup, pgprocno, cvWaitLink);
  SpinLockRelease(&cv->mutex);

  if (proc != ((void*)0) && proc != MyProc)
   SetLatch(&proc->procLatch);
 }
}
