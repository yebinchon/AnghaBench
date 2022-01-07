
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int offnum; } ;
typedef TYPE_1__ xl_heap_confirm ;
typedef int XLogRecPtr ;
struct TYPE_8__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_9__ {int t_ctid; } ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int * ItemId ;
typedef TYPE_3__* HeapTupleHeader ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ItemIdIsNormal (int *) ;
 int ItemPointerSet (int *,int ,int ) ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 scalar_t__ PageGetItem (int ,int *) ;
 int * PageGetItemId (int ,int ) ;
 int PageGetMaxOffsetNumber (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
heap_xlog_confirm(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_heap_confirm *xlrec = (xl_heap_confirm *) XLogRecGetData(record);
 Buffer buffer;
 Page page;
 OffsetNumber offnum;
 ItemId lp = ((void*)0);
 HeapTupleHeader htup;

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(buffer);

  offnum = xlrec->offnum;
  if (PageGetMaxOffsetNumber(page) >= offnum)
   lp = PageGetItemId(page, offnum);

  if (PageGetMaxOffsetNumber(page) < offnum || !ItemIdIsNormal(lp))
   elog(PANIC, "invalid lp");

  htup = (HeapTupleHeader) PageGetItem(page, lp);




  ItemPointerSet(&htup->t_ctid, BufferGetBlockNumber(buffer), offnum);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
