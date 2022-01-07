
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int regOffset; int heapBlk; int pagesPerRange; } ;
typedef TYPE_1__ xl_brin_desummarize ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_7__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int Page ;
typedef int ItemPointerData ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ItemPointerSetInvalid (int *) ;
 int MarkBufferDirty (int ) ;
 int PageIndexTupleDeleteNoCompact (int ,int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int brinSetHeapBlockItemptr (int ,int ,int ,int ) ;

__attribute__((used)) static void
brin_xlog_desummarize_page(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_brin_desummarize *xlrec;
 Buffer buffer;
 XLogRedoAction action;

 xlrec = (xl_brin_desummarize *) XLogRecGetData(record);


 action = XLogReadBufferForRedo(record, 0, &buffer);
 if (action == BLK_NEEDS_REDO)
 {
  ItemPointerData iptr;

  ItemPointerSetInvalid(&iptr);
  brinSetHeapBlockItemptr(buffer, xlrec->pagesPerRange, xlrec->heapBlk, iptr);

  PageSetLSN(BufferGetPage(buffer), lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);


 action = XLogReadBufferForRedo(record, 1, &buffer);
 if (action == BLK_NEEDS_REDO)
 {
  Page regPg = BufferGetPage(buffer);

  PageIndexTupleDeleteNoCompact(regPg, xlrec->regOffset);

  PageSetLSN(regPg, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
