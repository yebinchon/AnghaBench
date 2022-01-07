
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef int instr_time ;
typedef int WaitEvent ;
struct TYPE_7__ {int pgprocno; } ;
struct TYPE_6__ {int mutex; int wakeup; } ;
typedef TYPE_1__ ConditionVariable ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ConditionVariablePrepareToSleep (TYPE_1__*) ;
 scalar_t__ INSTR_TIME_GET_MILLISEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 long INT_MAX ;
 int MyLatch ;
 TYPE_3__* MyProc ;
 int ResetLatch (int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WaitEventSetWait (int ,long,int *,int,int ) ;
 int cvWaitLink ;
 TYPE_1__* cv_sleep_target ;
 int cv_wait_event_set ;
 int proclist_contains (int *,int ,int ) ;
 int proclist_push_tail (int *,int ,int ) ;

bool
ConditionVariableTimedSleep(ConditionVariable *cv, long timeout,
       uint32 wait_event_info)
{
 long cur_timeout = -1;
 instr_time start_time;
 instr_time cur_time;
 if (cv_sleep_target != cv)
 {
  ConditionVariablePrepareToSleep(cv);
  return 0;
 }





 if (timeout >= 0)
 {
  INSTR_TIME_SET_CURRENT(start_time);
  Assert(timeout >= 0 && timeout <= INT_MAX);
  cur_timeout = timeout;
 }

 while (1)
 {
  WaitEvent event;
  bool done = 0;





  (void) WaitEventSetWait(cv_wait_event_set, cur_timeout, &event, 1,
        wait_event_info);


  ResetLatch(MyLatch);

  CHECK_FOR_INTERRUPTS();
  SpinLockAcquire(&cv->mutex);
  if (!proclist_contains(&cv->wakeup, MyProc->pgprocno, cvWaitLink))
  {
   done = 1;
   proclist_push_tail(&cv->wakeup, MyProc->pgprocno, cvWaitLink);
  }
  SpinLockRelease(&cv->mutex);


  if (done)
   return 0;


  if (timeout >= 0)
  {
   INSTR_TIME_SET_CURRENT(cur_time);
   INSTR_TIME_SUBTRACT(cur_time, start_time);
   cur_timeout = timeout - (long) INSTR_TIME_GET_MILLISEC(cur_time);


   if (cur_timeout <= 0)
    return 1;
  }
 }
}
