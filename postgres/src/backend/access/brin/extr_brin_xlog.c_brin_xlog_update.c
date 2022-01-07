
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int insert; int oldOffnum; } ;
typedef TYPE_1__ xl_brin_update ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_8__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int MarkBufferDirty (int ) ;
 int PageIndexTupleDeleteNoCompact (scalar_t__,int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int brin_xlog_insert_update (TYPE_2__*,int *) ;

__attribute__((used)) static void
brin_xlog_update(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_brin_update *xlrec = (xl_brin_update *) XLogRecGetData(record);
 Buffer buffer;
 XLogRedoAction action;


 action = XLogReadBufferForRedo(record, 2, &buffer);
 if (action == BLK_NEEDS_REDO)
 {
  Page page;
  OffsetNumber offnum;

  page = (Page) BufferGetPage(buffer);

  offnum = xlrec->oldOffnum;

  PageIndexTupleDeleteNoCompact(page, offnum);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }


 brin_xlog_insert_update(record, &xlrec->insert);

 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
