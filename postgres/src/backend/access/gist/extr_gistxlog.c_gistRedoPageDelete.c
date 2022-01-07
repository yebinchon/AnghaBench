
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int downlinkOffset; int deleteXid; } ;
typedef TYPE_1__ gistxlogPageDelete ;
typedef int XLogRecPtr ;
struct TYPE_7__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int Page ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int GistPageSetDeleted (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int PageIndexTupleDelete (int ,int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;

__attribute__((used)) static void
gistRedoPageDelete(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 gistxlogPageDelete *xldata = (gistxlogPageDelete *) XLogRecGetData(record);
 Buffer parentBuffer;
 Buffer leafBuffer;

 if (XLogReadBufferForRedo(record, 0, &leafBuffer) == BLK_NEEDS_REDO)
 {
  Page page = (Page) BufferGetPage(leafBuffer);

  GistPageSetDeleted(page, xldata->deleteXid);

  PageSetLSN(page, lsn);
  MarkBufferDirty(leafBuffer);
 }

 if (XLogReadBufferForRedo(record, 1, &parentBuffer) == BLK_NEEDS_REDO)
 {
  Page page = (Page) BufferGetPage(parentBuffer);

  PageIndexTupleDelete(page, xldata->downlinkOffset);

  PageSetLSN(page, lsn);
  MarkBufferDirty(parentBuffer);
 }

 if (BufferIsValid(parentBuffer))
  UnlockReleaseBuffer(parentBuffer);
 if (BufferIsValid(leafBuffer))
  UnlockReleaseBuffer(leafBuffer);
}
