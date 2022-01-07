
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ offnum; int flags; int xmax; int infobits_set; } ;
typedef TYPE_1__ xl_heap_delete ;
typedef int XLogRecPtr ;
struct TYPE_15__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_16__ {int t_infomask; int t_ctid; int t_infomask2; } ;
typedef int Relation ;
typedef int RelFileNode ;
typedef int Page ;
typedef int ItemPointerData ;
typedef int * ItemId ;
typedef TYPE_3__* HeapTupleHeader ;
typedef int Buffer ;
typedef int BlockNumber ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CreateFakeRelcacheEntry (int ) ;
 int FirstCommandId ;
 int FreeFakeRelcacheEntry (int ) ;
 int HEAP_KEYS_UPDATED ;
 int HEAP_MOVED ;
 int HEAP_XMAX_BITS ;
 int HeapTupleHeaderClearHotUpdated (TYPE_3__*) ;
 int HeapTupleHeaderSetCmax (TYPE_3__*,int ,int) ;
 int HeapTupleHeaderSetMovedPartitions (TYPE_3__*) ;
 int HeapTupleHeaderSetXmax (TYPE_3__*,int ) ;
 int HeapTupleHeaderSetXmin (TYPE_3__*,int ) ;
 int InvalidBuffer ;
 int InvalidTransactionId ;
 int ItemIdIsNormal (int *) ;
 int ItemPointerSetBlockNumber (int *,int ) ;
 int ItemPointerSetOffsetNumber (int *,scalar_t__) ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 int PageClearAllVisible (int ) ;
 scalar_t__ PageGetItem (int ,int *) ;
 int * PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageSetLSN (int ,int ) ;
 int PageSetPrunable (int ,int ) ;
 int ReleaseBuffer (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int VISIBILITYMAP_VALID_BITS ;
 int XLH_DELETE_ALL_VISIBLE_CLEARED ;
 int XLH_DELETE_IS_PARTITION_MOVE ;
 int XLH_DELETE_IS_SUPER ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int ,int *,int *,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int XLogRecGetXid (TYPE_2__*) ;
 int elog (int ,char*) ;
 int fix_infomask_from_infobits (int ,int*,int *) ;
 int visibilitymap_clear (int ,int ,int ,int ) ;
 int visibilitymap_pin (int ,int ,int *) ;

__attribute__((used)) static void
heap_xlog_delete(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_heap_delete *xlrec = (xl_heap_delete *) XLogRecGetData(record);
 Buffer buffer;
 Page page;
 ItemId lp = ((void*)0);
 HeapTupleHeader htup;
 BlockNumber blkno;
 RelFileNode target_node;
 ItemPointerData target_tid;

 XLogRecGetBlockTag(record, 0, &target_node, ((void*)0), &blkno);
 ItemPointerSetBlockNumber(&target_tid, blkno);
 ItemPointerSetOffsetNumber(&target_tid, xlrec->offnum);





 if (xlrec->flags & XLH_DELETE_ALL_VISIBLE_CLEARED)
 {
  Relation reln = CreateFakeRelcacheEntry(target_node);
  Buffer vmbuffer = InvalidBuffer;

  visibilitymap_pin(reln, blkno, &vmbuffer);
  visibilitymap_clear(reln, blkno, vmbuffer, VISIBILITYMAP_VALID_BITS);
  ReleaseBuffer(vmbuffer);
  FreeFakeRelcacheEntry(reln);
 }

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(buffer);

  if (PageGetMaxOffsetNumber(page) >= xlrec->offnum)
   lp = PageGetItemId(page, xlrec->offnum);

  if (PageGetMaxOffsetNumber(page) < xlrec->offnum || !ItemIdIsNormal(lp))
   elog(PANIC, "invalid lp");

  htup = (HeapTupleHeader) PageGetItem(page, lp);

  htup->t_infomask &= ~(HEAP_XMAX_BITS | HEAP_MOVED);
  htup->t_infomask2 &= ~HEAP_KEYS_UPDATED;
  HeapTupleHeaderClearHotUpdated(htup);
  fix_infomask_from_infobits(xlrec->infobits_set,
           &htup->t_infomask, &htup->t_infomask2);
  if (!(xlrec->flags & XLH_DELETE_IS_SUPER))
   HeapTupleHeaderSetXmax(htup, xlrec->xmax);
  else
   HeapTupleHeaderSetXmin(htup, InvalidTransactionId);
  HeapTupleHeaderSetCmax(htup, FirstCommandId, 0);


  PageSetPrunable(page, XLogRecGetXid(record));

  if (xlrec->flags & XLH_DELETE_ALL_VISIBLE_CLEARED)
   PageClearAllVisible(page);


  if (xlrec->flags & XLH_DELETE_IS_PARTITION_MOVE)
   HeapTupleHeaderSetMovedPartitions(htup);
  else
   htup->t_ctid = target_tid;
  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
