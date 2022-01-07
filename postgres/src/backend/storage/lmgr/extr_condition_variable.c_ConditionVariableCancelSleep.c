
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pgprocno; } ;
struct TYPE_5__ {int mutex; int wakeup; } ;
typedef TYPE_1__ ConditionVariable ;


 int ConditionVariableSignal (TYPE_1__*) ;
 TYPE_3__* MyProc ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int cvWaitLink ;
 TYPE_1__* cv_sleep_target ;
 scalar_t__ proclist_contains (int *,int ,int ) ;
 int proclist_delete (int *,int ,int ) ;

void
ConditionVariableCancelSleep(void)
{
 ConditionVariable *cv = cv_sleep_target;
 bool signaled = 0;

 if (cv == ((void*)0))
  return;

 SpinLockAcquire(&cv->mutex);
 if (proclist_contains(&cv->wakeup, MyProc->pgprocno, cvWaitLink))
  proclist_delete(&cv->wakeup, MyProc->pgprocno, cvWaitLink);
 else
  signaled = 1;
 SpinLockRelease(&cv->mutex);






 if (signaled)
  ConditionVariableSignal(cv);

 cv_sleep_target = ((void*)0);
}
