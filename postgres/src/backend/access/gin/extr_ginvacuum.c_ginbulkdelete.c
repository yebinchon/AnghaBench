
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef size_t uint32 ;
struct TYPE_14__ {TYPE_2__* result; int tmpCxt; int index; int ginstate; int strategy; void* callback_state; int callback; } ;
struct TYPE_13__ {scalar_t__ num_index_tuples; } ;
struct TYPE_12__ {int strategy; int index; } ;
struct TYPE_11__ {scalar_t__ rightlink; } ;
typedef int Relation ;
typedef scalar_t__ Page ;
typedef int ItemId ;
typedef TYPE_1__ IndexVacuumInfo ;
typedef int IndexTupleData ;
typedef scalar_t__ IndexTuple ;
typedef TYPE_2__ IndexBulkDeleteResult ;
typedef int IndexBulkDeleteCallback ;
typedef TYPE_3__ GinVacuumState ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 int BLCKSZ ;
 scalar_t__ BufferGetPage (int ) ;
 int CurrentMemoryContext ;
 int END_CRIT_SECTION () ;
 scalar_t__ FirstOffsetNumber ;
 int GIN_EXCLUSIVE ;
 scalar_t__ GIN_ROOT_BLKNO ;
 int GIN_SHARE ;
 int GIN_UNLOCK ;
 scalar_t__ GinGetDownlink (scalar_t__) ;
 TYPE_10__* GinPageGetOpaque (scalar_t__) ;
 int GinPageIsData (scalar_t__) ;
 scalar_t__ GinPageIsLeaf (scalar_t__) ;
 scalar_t__ InvalidBlockNumber ;
 int IsAutoVacuumWorkerProcess () ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int MarkBufferDirty (int ) ;
 int MemoryContextDelete (int ) ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (scalar_t__) ;
 int PageRestoreTempPage (scalar_t__,scalar_t__) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int ginInsertCleanup (int *,int,int,int,TYPE_2__*) ;
 scalar_t__ ginVacuumEntryPage (TYPE_3__*,int ,scalar_t__*,size_t*) ;
 int ginVacuumPostingTree (TYPE_3__*,scalar_t__) ;
 int initGinState (int *,int ) ;
 scalar_t__ palloc0 (int) ;
 int vacuum_delay_point () ;
 int xlogVacuumPage (int ,int ) ;

IndexBulkDeleteResult *
ginbulkdelete(IndexVacuumInfo *info, IndexBulkDeleteResult *stats,
     IndexBulkDeleteCallback callback, void *callback_state)
{
 Relation index = info->index;
 BlockNumber blkno = GIN_ROOT_BLKNO;
 GinVacuumState gvs;
 Buffer buffer;
 BlockNumber rootOfPostingTree[BLCKSZ / (sizeof(IndexTupleData) + sizeof(ItemId))];
 uint32 nRoot;

 gvs.tmpCxt = AllocSetContextCreate(CurrentMemoryContext,
            "Gin vacuum temporary context",
            ALLOCSET_DEFAULT_SIZES);
 gvs.index = index;
 gvs.callback = callback;
 gvs.callback_state = callback_state;
 gvs.strategy = info->strategy;
 initGinState(&gvs.ginstate, index);


 if (stats == ((void*)0))
 {

  stats = (IndexBulkDeleteResult *) palloc0(sizeof(IndexBulkDeleteResult));




  ginInsertCleanup(&gvs.ginstate, !IsAutoVacuumWorkerProcess(),
       0, 1, stats);
 }


 stats->num_index_tuples = 0;
 gvs.result = stats;

 buffer = ReadBufferExtended(index, MAIN_FORKNUM, blkno,
        RBM_NORMAL, info->strategy);


 for (;;)
 {
  Page page = BufferGetPage(buffer);
  IndexTuple itup;

  LockBuffer(buffer, GIN_SHARE);

  Assert(!GinPageIsData(page));

  if (GinPageIsLeaf(page))
  {
   LockBuffer(buffer, GIN_UNLOCK);
   LockBuffer(buffer, GIN_EXCLUSIVE);

   if (blkno == GIN_ROOT_BLKNO && !GinPageIsLeaf(page))
   {
    LockBuffer(buffer, GIN_UNLOCK);
    continue;
   }
   break;
  }

  Assert(PageGetMaxOffsetNumber(page) >= FirstOffsetNumber);

  itup = (IndexTuple) PageGetItem(page, PageGetItemId(page, FirstOffsetNumber));
  blkno = GinGetDownlink(itup);
  Assert(blkno != InvalidBlockNumber);

  UnlockReleaseBuffer(buffer);
  buffer = ReadBufferExtended(index, MAIN_FORKNUM, blkno,
         RBM_NORMAL, info->strategy);
 }



 for (;;)
 {
  Page page = BufferGetPage(buffer);
  Page resPage;
  uint32 i;

  Assert(!GinPageIsData(page));

  resPage = ginVacuumEntryPage(&gvs, buffer, rootOfPostingTree, &nRoot);

  blkno = GinPageGetOpaque(page)->rightlink;

  if (resPage)
  {
   START_CRIT_SECTION();
   PageRestoreTempPage(resPage, page);
   MarkBufferDirty(buffer);
   xlogVacuumPage(gvs.index, buffer);
   UnlockReleaseBuffer(buffer);
   END_CRIT_SECTION();
  }
  else
  {
   UnlockReleaseBuffer(buffer);
  }

  vacuum_delay_point();

  for (i = 0; i < nRoot; i++)
  {
   ginVacuumPostingTree(&gvs, rootOfPostingTree[i]);
   vacuum_delay_point();
  }

  if (blkno == InvalidBlockNumber)
   break;

  buffer = ReadBufferExtended(index, MAIN_FORKNUM, blkno,
         RBM_NORMAL, info->strategy);
  LockBuffer(buffer, GIN_EXCLUSIVE);
 }

 MemoryContextDelete(gvs.tmpCxt);

 return gvs.result;
}
