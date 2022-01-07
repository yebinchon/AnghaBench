
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ btps_pageStatus; scalar_t__ btps_arrayKeyCount; int btps_cv; int btps_mutex; int btps_scanPage; } ;
struct TYPE_8__ {scalar_t__ arrayKeyCount; } ;
struct TYPE_7__ {TYPE_1__* parallel_scan; int opaque; } ;
struct TYPE_6__ {int ps_offset; } ;
typedef TYPE_1__* ParallelIndexScanDesc ;
typedef TYPE_2__* IndexScanDesc ;
typedef int BlockNumber ;
typedef TYPE_3__* BTScanOpaque ;
typedef TYPE_4__* BTParallelScanDesc ;
typedef scalar_t__ BTPS_State ;


 scalar_t__ BTPARALLEL_ADVANCING ;
 scalar_t__ BTPARALLEL_DONE ;
 int ConditionVariableCancelSleep () ;
 int ConditionVariableSleep (int *,int ) ;
 scalar_t__ OffsetToPointer (void*,int ) ;
 int P_NONE ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WAIT_EVENT_BTREE_PAGE ;

bool
_bt_parallel_seize(IndexScanDesc scan, BlockNumber *pageno)
{
 BTScanOpaque so = (BTScanOpaque) scan->opaque;
 BTPS_State pageStatus;
 bool exit_loop = 0;
 bool status = 1;
 ParallelIndexScanDesc parallel_scan = scan->parallel_scan;
 BTParallelScanDesc btscan;

 *pageno = P_NONE;

 btscan = (BTParallelScanDesc) OffsetToPointer((void *) parallel_scan,
              parallel_scan->ps_offset);

 while (1)
 {
  SpinLockAcquire(&btscan->btps_mutex);
  pageStatus = btscan->btps_pageStatus;

  if (so->arrayKeyCount < btscan->btps_arrayKeyCount)
  {

   status = 0;
  }
  else if (pageStatus == BTPARALLEL_DONE)
  {




   status = 0;
  }
  else if (pageStatus != BTPARALLEL_ADVANCING)
  {




   btscan->btps_pageStatus = BTPARALLEL_ADVANCING;
   *pageno = btscan->btps_scanPage;
   exit_loop = 1;
  }
  SpinLockRelease(&btscan->btps_mutex);
  if (exit_loop || !status)
   break;
  ConditionVariableSleep(&btscan->btps_cv, WAIT_EVENT_BTREE_PAGE);
 }
 ConditionVariableCancelSleep();

 return status;
}
