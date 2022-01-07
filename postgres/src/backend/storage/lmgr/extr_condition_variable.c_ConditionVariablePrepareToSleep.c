
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WaitEventSet ;
struct TYPE_6__ {int pgprocno; } ;
struct TYPE_5__ {int mutex; int wakeup; } ;
typedef TYPE_1__ ConditionVariable ;


 int AddWaitEventToSet (int *,int ,int ,int *,int *) ;
 int ConditionVariableCancelSleep () ;
 int * CreateWaitEventSet (int ,int) ;
 int * MyLatch ;
 TYPE_3__* MyProc ;
 int PGINVALID_SOCKET ;
 int ResetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int TopMemoryContext ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int cvWaitLink ;
 TYPE_1__* cv_sleep_target ;
 int * cv_wait_event_set ;
 int proclist_push_tail (int *,int,int ) ;

void
ConditionVariablePrepareToSleep(ConditionVariable *cv)
{
 int pgprocno = MyProc->pgprocno;





 if (cv_wait_event_set == ((void*)0))
 {
  WaitEventSet *new_event_set;

  new_event_set = CreateWaitEventSet(TopMemoryContext, 2);
  AddWaitEventToSet(new_event_set, WL_LATCH_SET, PGINVALID_SOCKET,
        MyLatch, ((void*)0));
  AddWaitEventToSet(new_event_set, WL_EXIT_ON_PM_DEATH, PGINVALID_SOCKET,
        ((void*)0), ((void*)0));

  cv_wait_event_set = new_event_set;
 }
 if (cv_sleep_target != ((void*)0))
  ConditionVariableCancelSleep();


 cv_sleep_target = cv;





 ResetLatch(MyLatch);


 SpinLockAcquire(&cv->mutex);
 proclist_push_tail(&cv->wakeup, pgprocno, cvWaitLink);
 SpinLockRelease(&cv->mutex);
}
