
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int btps_cv; scalar_t__ btps_arrayKeyCount; int btps_pageStatus; int btps_scanPage; int btps_mutex; } ;
typedef TYPE_1__* BTParallelScanDesc ;


 int BTPARALLEL_NOT_INITIALIZED ;
 int ConditionVariableInit (int *) ;
 int InvalidBlockNumber ;
 int SpinLockInit (int *) ;

void
btinitparallelscan(void *target)
{
 BTParallelScanDesc bt_target = (BTParallelScanDesc) target;

 SpinLockInit(&bt_target->btps_mutex);
 bt_target->btps_scanPage = InvalidBlockNumber;
 bt_target->btps_pageStatus = BTPARALLEL_NOT_INITIALIZED;
 bt_target->btps_arrayKeyCount = 0;
 ConditionVariableInit(&bt_target->btps_cv);
}
