
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ heapBlk; scalar_t__ offnum; int pagesPerRange; } ;
typedef TYPE_1__ xl_brin_insert ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_11__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_12__ {scalar_t__ bt_blkno; } ;
typedef int Size ;
typedef scalar_t__ Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef int Item ;
typedef int Buffer ;
typedef TYPE_3__ BrinTuple ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BRIN_PAGETYPE_REGULAR ;
 int BufferGetBlockNumber (int ) ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ InvalidOffsetNumber ;
 int ItemPointerSet (int *,int ,scalar_t__) ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 scalar_t__ PageAddItem (scalar_t__,int ,int ,scalar_t__,int,int) ;
 scalar_t__ PageGetMaxOffsetNumber (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_BRIN_INIT_PAGE ;
 int XLogInitBufferForRedo (TYPE_2__*,int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 scalar_t__ XLogRecGetBlockData (TYPE_2__*,int ,int *) ;
 int XLogRecGetInfo (TYPE_2__*) ;
 int brinSetHeapBlockItemptr (int ,int ,scalar_t__,int ) ;
 int brin_page_init (scalar_t__,int ) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
brin_xlog_insert_update(XLogReaderState *record,
      xl_brin_insert *xlrec)
{
 XLogRecPtr lsn = record->EndRecPtr;
 Buffer buffer;
 BlockNumber regpgno;
 Page page;
 XLogRedoAction action;





 if (XLogRecGetInfo(record) & XLOG_BRIN_INIT_PAGE)
 {
  buffer = XLogInitBufferForRedo(record, 0);
  page = BufferGetPage(buffer);
  brin_page_init(page, BRIN_PAGETYPE_REGULAR);
  action = BLK_NEEDS_REDO;
 }
 else
 {
  action = XLogReadBufferForRedo(record, 0, &buffer);
 }


 regpgno = BufferGetBlockNumber(buffer);


 if (action == BLK_NEEDS_REDO)
 {
  OffsetNumber offnum;
  BrinTuple *tuple;
  Size tuplen;

  tuple = (BrinTuple *) XLogRecGetBlockData(record, 0, &tuplen);

  Assert(tuple->bt_blkno == xlrec->heapBlk);

  page = (Page) BufferGetPage(buffer);
  offnum = xlrec->offnum;
  if (PageGetMaxOffsetNumber(page) + 1 < offnum)
   elog(PANIC, "brin_xlog_insert_update: invalid max offset number");

  offnum = PageAddItem(page, (Item) tuple, tuplen, offnum, 1, 0);
  if (offnum == InvalidOffsetNumber)
   elog(PANIC, "brin_xlog_insert_update: failed to add tuple");

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);


 action = XLogReadBufferForRedo(record, 1, &buffer);
 if (action == BLK_NEEDS_REDO)
 {
  ItemPointerData tid;

  ItemPointerSet(&tid, regpgno, xlrec->offnum);
  page = (Page) BufferGetPage(buffer);

  brinSetHeapBlockItemptr(buffer, xlrec->pagesPerRange, xlrec->heapBlk,
        tid);
  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);


}
