
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int phs_syncscan; } ;
struct TYPE_5__ {scalar_t__ phs_startblock; int phs_mutex; int phs_nblocks; TYPE_1__ base; } ;
typedef int Relation ;
typedef TYPE_2__* ParallelBlockTableScanDesc ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ InvalidBlockNumber ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 scalar_t__ ss_get_location (int ,int ) ;

void
table_block_parallelscan_startblock_init(Relation rel, ParallelBlockTableScanDesc pbscan)
{
 BlockNumber sync_startpage = InvalidBlockNumber;

retry:

 SpinLockAcquire(&pbscan->phs_mutex);
 if (pbscan->phs_startblock == InvalidBlockNumber)
 {
  if (!pbscan->base.phs_syncscan)
   pbscan->phs_startblock = 0;
  else if (sync_startpage != InvalidBlockNumber)
   pbscan->phs_startblock = sync_startpage;
  else
  {
   SpinLockRelease(&pbscan->phs_mutex);
   sync_startpage = ss_get_location(rel, pbscan->phs_nblocks);
   goto retry;
  }
 }
 SpinLockRelease(&pbscan->phs_mutex);
}
