
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int xact; } ;
struct TYPE_19__ {scalar_t__ btpo_cycleid; int btpo_flags; scalar_t__ btpo_next; TYPE_1__ btpo; } ;
struct TYPE_18__ {scalar_t__ cycleid; scalar_t__ lastBlockLocked; scalar_t__ lastBlockVacuumed; int oldestBtpoXact; int pagedelcontext; int totFreePages; void* callback_state; scalar_t__ (* callback ) (int *,void*) ;TYPE_4__* stats; TYPE_2__* info; } ;
struct TYPE_17__ {int tuples_removed; int pages_deleted; int num_index_tuples; } ;
struct TYPE_16__ {int t_tid; } ;
struct TYPE_15__ {int strategy; int index; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int MemoryContext ;
typedef int * ItemPointer ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef TYPE_3__* IndexTuple ;
typedef TYPE_4__ IndexBulkDeleteResult ;
typedef scalar_t__ (* IndexBulkDeleteCallback ) (int *,void*) ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_5__ BTVacState ;
typedef TYPE_6__* BTPageOpaque ;


 int BTP_SPLIT_END ;
 int BT_READ ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int LockBuffer (int ,int ) ;
 int LockBufferForCleanup (int ) ;
 int MAIN_FORKNUM ;
 int MarkBufferDirtyHint (int ,int) ;
 int MaxOffsetNumber ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ P_FIRSTDATAKEY (TYPE_6__*) ;
 scalar_t__ P_IGNORE (TYPE_6__*) ;
 scalar_t__ P_ISDELETED (TYPE_6__*) ;
 scalar_t__ P_ISHALFDEAD (TYPE_6__*) ;
 scalar_t__ P_ISLEAF (TYPE_6__*) ;
 scalar_t__ P_NONE ;
 int P_RIGHTMOST (TYPE_6__*) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageIsNew (int ) ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 int RecordFreeIndexPage (int ,scalar_t__) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int _bt_checkpage (int ,int ) ;
 int _bt_delitems_vacuum (int ,int ,scalar_t__*,int,scalar_t__) ;
 scalar_t__ _bt_page_recyclable (int ) ;
 int _bt_pagedel (int ,int ) ;
 int _bt_relbuf (int ,int ) ;
 int vacuum_delay_point () ;

__attribute__((used)) static void
btvacuumpage(BTVacState *vstate, BlockNumber blkno, BlockNumber orig_blkno)
{
 IndexVacuumInfo *info = vstate->info;
 IndexBulkDeleteResult *stats = vstate->stats;
 IndexBulkDeleteCallback callback = vstate->callback;
 void *callback_state = vstate->callback_state;
 Relation rel = info->index;
 bool delete_now;
 BlockNumber recurse_to;
 Buffer buf;
 Page page;
 BTPageOpaque opaque = ((void*)0);

restart:
 delete_now = 0;
 recurse_to = P_NONE;


 vacuum_delay_point();







 buf = ReadBufferExtended(rel, MAIN_FORKNUM, blkno, RBM_NORMAL,
        info->strategy);
 LockBuffer(buf, BT_READ);
 page = BufferGetPage(buf);
 if (!PageIsNew(page))
 {
  _bt_checkpage(rel, buf);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
 }






 if (blkno != orig_blkno)
 {
  if (_bt_page_recyclable(page) ||
   P_IGNORE(opaque) ||
   !P_ISLEAF(opaque) ||
   opaque->btpo_cycleid != vstate->cycleid)
  {
   _bt_relbuf(rel, buf);
   return;
  }
 }


 if (_bt_page_recyclable(page))
 {

  RecordFreeIndexPage(rel, blkno);
  vstate->totFreePages++;
  stats->pages_deleted++;
 }
 else if (P_ISDELETED(opaque))
 {

  stats->pages_deleted++;


  if (!TransactionIdIsValid(vstate->oldestBtpoXact) ||
   TransactionIdPrecedes(opaque->btpo.xact, vstate->oldestBtpoXact))
   vstate->oldestBtpoXact = opaque->btpo.xact;
 }
 else if (P_ISHALFDEAD(opaque))
 {

  delete_now = 1;
 }
 else if (P_ISLEAF(opaque))
 {
  OffsetNumber deletable[MaxOffsetNumber];
  int ndeletable;
  OffsetNumber offnum,
     minoff,
     maxoff;







  LockBuffer(buf, BUFFER_LOCK_UNLOCK);
  LockBufferForCleanup(buf);





  if (blkno > vstate->lastBlockLocked)
   vstate->lastBlockLocked = blkno;
  if (vstate->cycleid != 0 &&
   opaque->btpo_cycleid == vstate->cycleid &&
   !(opaque->btpo_flags & BTP_SPLIT_END) &&
   !P_RIGHTMOST(opaque) &&
   opaque->btpo_next < orig_blkno)
   recurse_to = opaque->btpo_next;





  ndeletable = 0;
  minoff = P_FIRSTDATAKEY(opaque);
  maxoff = PageGetMaxOffsetNumber(page);
  if (callback)
  {
   for (offnum = minoff;
     offnum <= maxoff;
     offnum = OffsetNumberNext(offnum))
   {
    IndexTuple itup;
    ItemPointer htup;

    itup = (IndexTuple) PageGetItem(page,
            PageGetItemId(page, offnum));
    htup = &(itup->t_tid);
    if (callback(htup, callback_state))
     deletable[ndeletable++] = offnum;
   }
  }





  if (ndeletable > 0)
  {
   _bt_delitems_vacuum(rel, buf, deletable, ndeletable,
        vstate->lastBlockVacuumed);





   if (blkno > vstate->lastBlockVacuumed)
    vstate->lastBlockVacuumed = blkno;

   stats->tuples_removed += ndeletable;

   maxoff = PageGetMaxOffsetNumber(page);
  }
  else
  {
   if (vstate->cycleid != 0 &&
    opaque->btpo_cycleid == vstate->cycleid)
   {
    opaque->btpo_cycleid = 0;
    MarkBufferDirtyHint(buf, 1);
   }
  }







  if (minoff > maxoff)
   delete_now = (blkno == orig_blkno);
  else
   stats->num_index_tuples += maxoff - minoff + 1;
 }

 if (delete_now)
 {
  MemoryContext oldcontext;
  int ndel;


  MemoryContextReset(vstate->pagedelcontext);
  oldcontext = MemoryContextSwitchTo(vstate->pagedelcontext);

  ndel = _bt_pagedel(rel, buf);


  if (ndel)
  {
   stats->pages_deleted++;
   if (!TransactionIdIsValid(vstate->oldestBtpoXact) ||
    TransactionIdPrecedes(opaque->btpo.xact, vstate->oldestBtpoXact))
    vstate->oldestBtpoXact = opaque->btpo.xact;
  }

  MemoryContextSwitchTo(oldcontext);

 }
 else
  _bt_relbuf(rel, buf);
 if (recurse_to != P_NONE)
 {
  blkno = recurse_to;
  goto restart;
 }
}
