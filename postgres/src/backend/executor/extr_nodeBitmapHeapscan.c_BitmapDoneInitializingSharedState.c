
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cv; int mutex; int state; } ;
typedef TYPE_1__ ParallelBitmapHeapState ;


 int BM_FINISHED ;
 int ConditionVariableBroadcast (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

__attribute__((used)) static inline void
BitmapDoneInitializingSharedState(ParallelBitmapHeapState *pstate)
{
 SpinLockAcquire(&pstate->mutex);
 pstate->state = BM_FINISHED;
 SpinLockRelease(&pstate->mutex);
 ConditionVariableBroadcast(&pstate->cv);
}
