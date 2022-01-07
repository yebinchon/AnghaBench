
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int btps_cv; int btps_mutex; int btps_pageStatus; int btps_scanPage; } ;
struct TYPE_6__ {TYPE_1__* parallel_scan; } ;
struct TYPE_5__ {int ps_offset; } ;
typedef TYPE_1__* ParallelIndexScanDesc ;
typedef TYPE_2__* IndexScanDesc ;
typedef int BlockNumber ;
typedef TYPE_3__* BTParallelScanDesc ;


 int BTPARALLEL_IDLE ;
 int ConditionVariableSignal (int *) ;
 scalar_t__ OffsetToPointer (void*,int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

void
_bt_parallel_release(IndexScanDesc scan, BlockNumber scan_page)
{
 ParallelIndexScanDesc parallel_scan = scan->parallel_scan;
 BTParallelScanDesc btscan;

 btscan = (BTParallelScanDesc) OffsetToPointer((void *) parallel_scan,
              parallel_scan->ps_offset);

 SpinLockAcquire(&btscan->btps_mutex);
 btscan->btps_scanPage = scan_page;
 btscan->btps_pageStatus = BTPARALLEL_IDLE;
 SpinLockRelease(&btscan->btps_mutex);
 ConditionVariableSignal(&btscan->btps_cv);
}
