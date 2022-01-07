
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mutex; int wakeup; } ;
struct TYPE_5__ {int procLatch; } ;
typedef TYPE_1__ PGPROC ;
typedef TYPE_2__ ConditionVariable ;


 int SetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int cvWaitLink ;
 int proclist_is_empty (int *) ;
 TYPE_1__* proclist_pop_head_node (int *,int ) ;

void
ConditionVariableSignal(ConditionVariable *cv)
{
 PGPROC *proc = ((void*)0);


 SpinLockAcquire(&cv->mutex);
 if (!proclist_is_empty(&cv->wakeup))
  proc = proclist_pop_head_node(&cv->wakeup, cvWaitLink);
 SpinLockRelease(&cv->mutex);


 if (proc != ((void*)0))
  SetLatch(&proc->procLatch);
}
