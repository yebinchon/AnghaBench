
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_9__ {scalar_t__ lastBlockVacuumed; scalar_t__ lastBlockLocked; scalar_t__ totFreePages; int oldestBtpoXact; int pagedelcontext; int cycleid; void* callback_state; int callback; TYPE_2__* stats; TYPE_1__* info; } ;
struct TYPE_8__ {int estimated_count; scalar_t__ pages_free; scalar_t__ num_pages; scalar_t__ pages_deleted; scalar_t__ num_index_tuples; } ;
struct TYPE_7__ {int strategy; scalar_t__ report_progress; int index; } ;
typedef int Relation ;
typedef TYPE_1__ IndexVacuumInfo ;
typedef TYPE_2__ IndexBulkDeleteResult ;
typedef int IndexBulkDeleteCallback ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_3__ BTVacState ;
typedef int BTCycleId ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 scalar_t__ BTREE_METAPAGE ;
 int CurrentMemoryContext ;
 int ExclusiveLock ;
 int IndexFreeSpaceMapVacuum (int ) ;
 int InvalidTransactionId ;
 int LockBufferForCleanup (int ) ;
 int LockRelationForExtension (int ,int ) ;
 int MAIN_FORKNUM ;
 int MemoryContextDelete (int ) ;
 int PROGRESS_SCAN_BLOCKS_DONE ;
 int PROGRESS_SCAN_BLOCKS_TOTAL ;
 int RBM_NORMAL ;
 int RELATION_IS_LOCAL (int ) ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int UnlockRelationForExtension (int ,int ) ;
 scalar_t__ XLogStandbyInfoActive () ;
 int _bt_checkpage (int ,int ) ;
 int _bt_delitems_vacuum (int ,int ,int *,int ,scalar_t__) ;
 int _bt_relbuf (int ,int ) ;
 int btvacuumpage (TYPE_3__*,scalar_t__,scalar_t__) ;
 int pgstat_progress_update_param (int ,scalar_t__) ;

__attribute__((used)) static void
btvacuumscan(IndexVacuumInfo *info, IndexBulkDeleteResult *stats,
    IndexBulkDeleteCallback callback, void *callback_state,
    BTCycleId cycleid, TransactionId *oldestBtpoXact)
{
 Relation rel = info->index;
 BTVacState vstate;
 BlockNumber num_pages;
 BlockNumber blkno;
 bool needLock;





 stats->estimated_count = 0;
 stats->num_index_tuples = 0;
 stats->pages_deleted = 0;


 vstate.info = info;
 vstate.stats = stats;
 vstate.callback = callback;
 vstate.callback_state = callback_state;
 vstate.cycleid = cycleid;
 vstate.lastBlockVacuumed = BTREE_METAPAGE;
 vstate.lastBlockLocked = BTREE_METAPAGE;
 vstate.totFreePages = 0;
 vstate.oldestBtpoXact = InvalidTransactionId;


 vstate.pagedelcontext = AllocSetContextCreate(CurrentMemoryContext,
              "_bt_pagedel",
              ALLOCSET_DEFAULT_SIZES);
 needLock = !RELATION_IS_LOCAL(rel);

 blkno = BTREE_METAPAGE + 1;
 for (;;)
 {

  if (needLock)
   LockRelationForExtension(rel, ExclusiveLock);
  num_pages = RelationGetNumberOfBlocks(rel);
  if (needLock)
   UnlockRelationForExtension(rel, ExclusiveLock);

  if (info->report_progress)
   pgstat_progress_update_param(PROGRESS_SCAN_BLOCKS_TOTAL,
           num_pages);


  if (blkno >= num_pages)
   break;

  for (; blkno < num_pages; blkno++)
  {
   btvacuumpage(&vstate, blkno, blkno);
   if (info->report_progress)
    pgstat_progress_update_param(PROGRESS_SCAN_BLOCKS_DONE,
            blkno);
  }
 }
 if (XLogStandbyInfoActive() &&
  vstate.lastBlockVacuumed < vstate.lastBlockLocked)
 {
  Buffer buf;







  buf = ReadBufferExtended(rel, MAIN_FORKNUM, vstate.lastBlockLocked,
         RBM_NORMAL, info->strategy);
  LockBufferForCleanup(buf);
  _bt_checkpage(rel, buf);
  _bt_delitems_vacuum(rel, buf, ((void*)0), 0, vstate.lastBlockVacuumed);
  _bt_relbuf(rel, buf);
 }

 MemoryContextDelete(vstate.pagedelcontext);
 if (vstate.totFreePages > 0)
  IndexFreeSpaceMapVacuum(rel);


 stats->num_pages = num_pages;
 stats->pages_free = vstate.totFreePages;

 if (oldestBtpoXact)
  *oldestBtpoXact = vstate.oldestBtpoXact;
}
