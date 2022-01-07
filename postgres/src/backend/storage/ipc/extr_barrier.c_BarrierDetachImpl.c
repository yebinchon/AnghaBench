
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ participants; scalar_t__ arrived; int condition_variable; int mutex; int phase; int static_party; } ;
typedef TYPE_1__ Barrier ;


 int Assert (int) ;
 int ConditionVariableBroadcast (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

__attribute__((used)) static inline bool
BarrierDetachImpl(Barrier *barrier, bool arrive)
{
 bool release;
 bool last;

 Assert(!barrier->static_party);

 SpinLockAcquire(&barrier->mutex);
 Assert(barrier->participants > 0);
 --barrier->participants;






 if ((arrive || barrier->participants > 0) &&
  barrier->arrived == barrier->participants)
 {
  release = 1;
  barrier->arrived = 0;
  ++barrier->phase;
 }
 else
  release = 0;

 last = barrier->participants == 0;
 SpinLockRelease(&barrier->mutex);

 if (release)
  ConditionVariableBroadcast(&barrier->condition_variable);

 return last;
}
