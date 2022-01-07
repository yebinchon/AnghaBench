
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int phase; scalar_t__ arrived; scalar_t__ participants; int elected; int condition_variable; int mutex; } ;
typedef TYPE_1__ Barrier ;


 int Assert (int) ;
 int ConditionVariableBroadcast (int *) ;
 int ConditionVariableCancelSleep () ;
 int ConditionVariablePrepareToSleep (int *) ;
 int ConditionVariableSleep (int *,int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

bool
BarrierArriveAndWait(Barrier *barrier, uint32 wait_event_info)
{
 bool release = 0;
 bool elected;
 int start_phase;
 int next_phase;

 SpinLockAcquire(&barrier->mutex);
 start_phase = barrier->phase;
 next_phase = start_phase + 1;
 ++barrier->arrived;
 if (barrier->arrived == barrier->participants)
 {
  release = 1;
  barrier->arrived = 0;
  barrier->phase = next_phase;
  barrier->elected = next_phase;
 }
 SpinLockRelease(&barrier->mutex);






 if (release)
 {
  ConditionVariableBroadcast(&barrier->condition_variable);

  return 1;
 }





 elected = 0;
 ConditionVariablePrepareToSleep(&barrier->condition_variable);
 for (;;)
 {
  SpinLockAcquire(&barrier->mutex);
  Assert(barrier->phase == start_phase || barrier->phase == next_phase);
  release = barrier->phase == next_phase;
  if (release && barrier->elected != next_phase)
  {







   barrier->elected = barrier->phase;
   elected = 1;
  }
  SpinLockRelease(&barrier->mutex);
  if (release)
   break;
  ConditionVariableSleep(&barrier->condition_variable, wait_event_info);
 }
 ConditionVariableCancelSleep();

 return elected;
}
