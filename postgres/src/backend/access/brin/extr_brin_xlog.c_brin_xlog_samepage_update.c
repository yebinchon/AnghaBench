
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int offnum; } ;
typedef TYPE_1__ xl_brin_samepage_update ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_8__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int Size ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int Item ;
typedef int Buffer ;
typedef int BrinTuple ;


 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 int PageIndexTupleOverwrite (scalar_t__,int ,int ,int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 scalar_t__ XLogRecGetBlockData (TYPE_2__*,int ,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
brin_xlog_samepage_update(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_brin_samepage_update *xlrec;
 Buffer buffer;
 XLogRedoAction action;

 xlrec = (xl_brin_samepage_update *) XLogRecGetData(record);
 action = XLogReadBufferForRedo(record, 0, &buffer);
 if (action == BLK_NEEDS_REDO)
 {
  Size tuplen;
  BrinTuple *brintuple;
  Page page;
  OffsetNumber offnum;

  brintuple = (BrinTuple *) XLogRecGetBlockData(record, 0, &tuplen);

  page = (Page) BufferGetPage(buffer);

  offnum = xlrec->offnum;

  if (!PageIndexTupleOverwrite(page, offnum, (Item) brintuple, tuplen))
   elog(PANIC, "brin_xlog_samepage_update: failed to replace tuple");

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);


}
