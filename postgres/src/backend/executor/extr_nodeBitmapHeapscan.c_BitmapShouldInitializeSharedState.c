
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; int cv; int mutex; } ;
typedef scalar_t__ SharedBitmapState ;
typedef TYPE_1__ ParallelBitmapHeapState ;


 scalar_t__ BM_INITIAL ;
 scalar_t__ BM_INPROGRESS ;
 int ConditionVariableCancelSleep () ;
 int ConditionVariableSleep (int *,int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WAIT_EVENT_PARALLEL_BITMAP_SCAN ;

__attribute__((used)) static bool
BitmapShouldInitializeSharedState(ParallelBitmapHeapState *pstate)
{
 SharedBitmapState state;

 while (1)
 {
  SpinLockAcquire(&pstate->mutex);
  state = pstate->state;
  if (pstate->state == BM_INITIAL)
   pstate->state = BM_INPROGRESS;
  SpinLockRelease(&pstate->mutex);


  if (state != BM_INPROGRESS)
   break;


  ConditionVariableSleep(&pstate->cv, WAIT_EVENT_PARALLEL_BITMAP_SCAN);
 }

 ConditionVariableCancelSleep();

 return (state == BM_INITIAL);
}
