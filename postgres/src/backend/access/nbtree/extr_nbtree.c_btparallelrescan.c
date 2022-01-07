
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int btps_mutex; scalar_t__ btps_arrayKeyCount; int btps_pageStatus; int btps_scanPage; } ;
struct TYPE_7__ {TYPE_1__* parallel_scan; } ;
struct TYPE_6__ {int ps_offset; } ;
typedef TYPE_1__* ParallelIndexScanDesc ;
typedef TYPE_2__* IndexScanDesc ;
typedef TYPE_3__* BTParallelScanDesc ;


 int Assert (TYPE_1__*) ;
 int BTPARALLEL_NOT_INITIALIZED ;
 int InvalidBlockNumber ;
 scalar_t__ OffsetToPointer (void*,int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

void
btparallelrescan(IndexScanDesc scan)
{
 BTParallelScanDesc btscan;
 ParallelIndexScanDesc parallel_scan = scan->parallel_scan;

 Assert(parallel_scan);

 btscan = (BTParallelScanDesc) OffsetToPointer((void *) parallel_scan,
              parallel_scan->ps_offset);






 SpinLockAcquire(&btscan->btps_mutex);
 btscan->btps_scanPage = InvalidBlockNumber;
 btscan->btps_pageStatus = BTPARALLEL_NOT_INITIALIZED;
 btscan->btps_arrayKeyCount = 0;
 SpinLockRelease(&btscan->btps_mutex);
}
