
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ btps_arrayKeyCount; scalar_t__ btps_pageStatus; int btps_cv; int btps_mutex; } ;
struct TYPE_8__ {scalar_t__ arrayKeyCount; } ;
struct TYPE_7__ {TYPE_1__* parallel_scan; int opaque; } ;
struct TYPE_6__ {int ps_offset; } ;
typedef TYPE_1__* ParallelIndexScanDesc ;
typedef TYPE_2__* IndexScanDesc ;
typedef TYPE_3__* BTScanOpaque ;
typedef TYPE_4__* BTParallelScanDesc ;


 scalar_t__ BTPARALLEL_DONE ;
 int ConditionVariableBroadcast (int *) ;
 scalar_t__ OffsetToPointer (void*,int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

void
_bt_parallel_done(IndexScanDesc scan)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 ParallelIndexScanDesc parallel_scan = scan->parallel_scan;
 BTParallelScanDesc btscan;
 bool status_changed = 0;


 if (parallel_scan == ((void*)0))
  return;

 btscan = (BTParallelScanDesc) OffsetToPointer((void *) parallel_scan,
              parallel_scan->ps_offset);






 SpinLockAcquire(&btscan->btps_mutex);
 if (so->arrayKeyCount >= btscan->btps_arrayKeyCount &&
  btscan->btps_pageStatus != BTPARALLEL_DONE)
 {
  btscan->btps_pageStatus = BTPARALLEL_DONE;
  status_changed = 1;
 }
 SpinLockRelease(&btscan->btps_mutex);


 if (status_changed)
  ConditionVariableBroadcast(&btscan->btps_cv);
}
