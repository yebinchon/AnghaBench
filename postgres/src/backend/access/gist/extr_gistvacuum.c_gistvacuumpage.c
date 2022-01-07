
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_15__ {scalar_t__ rightlink; } ;
struct TYPE_10__ {int tuples_removed; int num_index_tuples; int pages_deleted; int pages_free; } ;
struct TYPE_14__ {int internal_page_set; TYPE_1__ stats; int empty_leaf_set; } ;
struct TYPE_13__ {scalar_t__ startNSN; void* callback_state; scalar_t__ (* callback ) (int *,void*) ;TYPE_2__* info; TYPE_5__* stats; } ;
struct TYPE_12__ {int t_tid; } ;
struct TYPE_11__ {int strategy; int index; } ;
typedef int Relation ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef TYPE_3__* IndexTuple ;
typedef scalar_t__ (* IndexBulkDeleteCallback ) (int *,void*) ;
typedef TYPE_4__ GistVacState ;
typedef TYPE_5__ GistBulkDeleteResult ;
typedef TYPE_6__* GISTPageOpaque ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 scalar_t__ FirstOffsetNumber ;
 int GIST_EXCLUSIVE ;
 scalar_t__ GistFollowRight (scalar_t__) ;
 int GistMarkTuplesDeleted (scalar_t__) ;
 scalar_t__ GistPageGetNSN (scalar_t__) ;
 TYPE_6__* GistPageGetOpaque (scalar_t__) ;
 scalar_t__ GistPageIsDeleted (scalar_t__) ;
 scalar_t__ GistPageIsLeaf (scalar_t__) ;
 scalar_t__ GistTupleIsInvalid (TYPE_3__*) ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 int LOG ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int MarkBufferDirty (int ) ;
 int MaxOffsetNumber ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 int PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (scalar_t__) ;
 int PageIndexMultiDelete (scalar_t__,scalar_t__*,int) ;
 int PageSetLSN (scalar_t__,int ) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 int RecordFreeIndexPage (int ,scalar_t__) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 int gistGetFakeLSN (int ) ;
 scalar_t__ gistPageRecyclable (scalar_t__) ;
 int gistXLogUpdate (int ,scalar_t__*,int,int *,int ,int ) ;
 int intset_add_member (int ,scalar_t__) ;
 int vacuum_delay_point () ;

__attribute__((used)) static void
gistvacuumpage(GistVacState *vstate, BlockNumber blkno, BlockNumber orig_blkno)
{
 GistBulkDeleteResult *stats = vstate->stats;
 IndexVacuumInfo *info = vstate->info;
 IndexBulkDeleteCallback callback = vstate->callback;
 void *callback_state = vstate->callback_state;
 Relation rel = info->index;
 Buffer buffer;
 Page page;
 BlockNumber recurse_to;

restart:
 recurse_to = InvalidBlockNumber;


 vacuum_delay_point();

 buffer = ReadBufferExtended(rel, MAIN_FORKNUM, blkno, RBM_NORMAL,
        info->strategy);





 LockBuffer(buffer, GIST_EXCLUSIVE);
 page = (Page) BufferGetPage(buffer);

 if (gistPageRecyclable(page))
 {

  RecordFreeIndexPage(rel, blkno);
  stats->stats.pages_free++;
  stats->stats.pages_deleted++;
 }
 else if (GistPageIsDeleted(page))
 {

  stats->stats.pages_deleted++;
 }
 else if (GistPageIsLeaf(page))
 {
  OffsetNumber todelete[MaxOffsetNumber];
  int ntodelete = 0;
  int nremain;
  GISTPageOpaque opaque = GistPageGetOpaque(page);
  OffsetNumber maxoff = PageGetMaxOffsetNumber(page);
  if ((GistFollowRight(page) ||
    vstate->startNSN < GistPageGetNSN(page)) &&
   (opaque->rightlink != InvalidBlockNumber) &&
   (opaque->rightlink < orig_blkno))
  {
   recurse_to = opaque->rightlink;
  }





  if (callback)
  {
   OffsetNumber off;

   for (off = FirstOffsetNumber;
     off <= maxoff;
     off = OffsetNumberNext(off))
   {
    ItemId iid = PageGetItemId(page, off);
    IndexTuple idxtuple = (IndexTuple) PageGetItem(page, iid);

    if (callback(&(idxtuple->t_tid), callback_state))
     todelete[ntodelete++] = off;
   }
  }





  if (ntodelete > 0)
  {
   START_CRIT_SECTION();

   MarkBufferDirty(buffer);

   PageIndexMultiDelete(page, todelete, ntodelete);
   GistMarkTuplesDeleted(page);

   if (RelationNeedsWAL(rel))
   {
    XLogRecPtr recptr;

    recptr = gistXLogUpdate(buffer,
          todelete, ntodelete,
          ((void*)0), 0, InvalidBuffer);
    PageSetLSN(page, recptr);
   }
   else
    PageSetLSN(page, gistGetFakeLSN(rel));

   END_CRIT_SECTION();

   stats->stats.tuples_removed += ntodelete;

   maxoff = PageGetMaxOffsetNumber(page);
  }

  nremain = maxoff - FirstOffsetNumber + 1;
  if (nremain == 0)
  {
   if (blkno == orig_blkno)
    intset_add_member(stats->empty_leaf_set, blkno);
  }
  else
   stats->stats.num_index_tuples += nremain;
 }
 else
 {







  OffsetNumber maxoff = PageGetMaxOffsetNumber(page);
  OffsetNumber off;

  for (off = FirstOffsetNumber;
    off <= maxoff;
    off = OffsetNumberNext(off))
  {
   ItemId iid = PageGetItemId(page, off);
   IndexTuple idxtuple = (IndexTuple) PageGetItem(page, iid);

   if (GistTupleIsInvalid(idxtuple))
    ereport(LOG,
      (errmsg("index \"%s\" contains an inner tuple marked as invalid",
        RelationGetRelationName(rel)),
       errdetail("This is caused by an incomplete page split at crash recovery before upgrading to PostgreSQL 9.1."),
       errhint("Please REINDEX it.")));
  }






  if (blkno == orig_blkno)
   intset_add_member(stats->internal_page_set, blkno);
 }

 UnlockReleaseBuffer(buffer);
 if (recurse_to != InvalidBlockNumber)
 {
  blkno = recurse_to;
  goto restart;
 }
}
