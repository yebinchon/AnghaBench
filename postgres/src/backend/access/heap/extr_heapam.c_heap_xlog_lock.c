
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int flags; int locking_xid; int infobits_set; int offnum; } ;
typedef TYPE_1__ xl_heap_lock ;
typedef int XLogRecPtr ;
struct TYPE_12__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_13__ {int t_infomask; int t_ctid; int t_infomask2; } ;
typedef int Relation ;
typedef int RelFileNode ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int * ItemId ;
typedef TYPE_3__* HeapTupleHeader ;
typedef int Buffer ;
typedef int BlockNumber ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetBlockNumber (int ) ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CreateFakeRelcacheEntry (int ) ;
 int FirstCommandId ;
 int FreeFakeRelcacheEntry (int ) ;
 int HEAP_KEYS_UPDATED ;
 int HEAP_MOVED ;
 int HEAP_XMAX_BITS ;
 scalar_t__ HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HeapTupleHeaderClearHotUpdated (TYPE_3__*) ;
 int HeapTupleHeaderSetCmax (TYPE_3__*,int ,int) ;
 int HeapTupleHeaderSetXmax (TYPE_3__*,int ) ;
 int InvalidBuffer ;
 int ItemIdIsNormal (int *) ;
 int ItemPointerSet (int *,int ,int ) ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 scalar_t__ PageGetItem (scalar_t__,int *) ;
 int * PageGetItemId (scalar_t__,int ) ;
 int PageGetMaxOffsetNumber (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int ReleaseBuffer (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int VISIBILITYMAP_ALL_FROZEN ;
 int XLH_LOCK_ALL_FROZEN_CLEARED ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int ,int *,int *,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int elog (int ,char*) ;
 int fix_infomask_from_infobits (int ,int*,int *) ;
 int visibilitymap_clear (int ,int ,int ,int ) ;
 int visibilitymap_pin (int ,int ,int *) ;

__attribute__((used)) static void
heap_xlog_lock(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_heap_lock *xlrec = (xl_heap_lock *) XLogRecGetData(record);
 Buffer buffer;
 Page page;
 OffsetNumber offnum;
 ItemId lp = ((void*)0);
 HeapTupleHeader htup;





 if (xlrec->flags & XLH_LOCK_ALL_FROZEN_CLEARED)
 {
  RelFileNode rnode;
  Buffer vmbuffer = InvalidBuffer;
  BlockNumber block;
  Relation reln;

  XLogRecGetBlockTag(record, 0, &rnode, ((void*)0), &block);
  reln = CreateFakeRelcacheEntry(rnode);

  visibilitymap_pin(reln, block, &vmbuffer);
  visibilitymap_clear(reln, block, vmbuffer, VISIBILITYMAP_ALL_FROZEN);

  ReleaseBuffer(vmbuffer);
  FreeFakeRelcacheEntry(reln);
 }

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  page = (Page) BufferGetPage(buffer);

  offnum = xlrec->offnum;
  if (PageGetMaxOffsetNumber(page) >= offnum)
   lp = PageGetItemId(page, offnum);

  if (PageGetMaxOffsetNumber(page) < offnum || !ItemIdIsNormal(lp))
   elog(PANIC, "invalid lp");

  htup = (HeapTupleHeader) PageGetItem(page, lp);

  htup->t_infomask &= ~(HEAP_XMAX_BITS | HEAP_MOVED);
  htup->t_infomask2 &= ~HEAP_KEYS_UPDATED;
  fix_infomask_from_infobits(xlrec->infobits_set, &htup->t_infomask,
           &htup->t_infomask2);





  if (HEAP_XMAX_IS_LOCKED_ONLY(htup->t_infomask))
  {
   HeapTupleHeaderClearHotUpdated(htup);

   ItemPointerSet(&htup->t_ctid,
         BufferGetBlockNumber(buffer),
         offnum);
  }
  HeapTupleHeaderSetXmax(htup, xlrec->locking_xid);
  HeapTupleHeaderSetCmax(htup, FirstCommandId, 0);
  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
