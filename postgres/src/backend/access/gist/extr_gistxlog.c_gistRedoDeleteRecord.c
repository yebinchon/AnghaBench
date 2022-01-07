
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ntodelete; int latestRemovedXid; } ;
typedef TYPE_1__ gistxlogDelete ;
typedef int XLogRecPtr ;
struct TYPE_9__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int RelFileNode ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int GistClearPageHasGarbage (scalar_t__) ;
 int GistMarkTuplesDeleted (scalar_t__) ;
 scalar_t__ InHotStandby ;
 int MarkBufferDirty (int ) ;
 int PageIndexMultiDelete (scalar_t__,int *,int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int ResolveRecoveryConflictWithSnapshot (int ,int ) ;
 scalar_t__ SizeOfGistxlogDelete ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int ,int *,int *,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 scalar_t__ XLogRecGetDataLen (TYPE_2__*) ;

__attribute__((used)) static void
gistRedoDeleteRecord(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 gistxlogDelete *xldata = (gistxlogDelete *) XLogRecGetData(record);
 Buffer buffer;
 Page page;
 if (InHotStandby)
 {
  RelFileNode rnode;

  XLogRecGetBlockTag(record, 0, &rnode, ((void*)0), ((void*)0));

  ResolveRecoveryConflictWithSnapshot(xldata->latestRemovedXid, rnode);
 }

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  page = (Page) BufferGetPage(buffer);

  if (XLogRecGetDataLen(record) > SizeOfGistxlogDelete)
  {
   OffsetNumber *todelete;

   todelete = (OffsetNumber *) ((char *) xldata + SizeOfGistxlogDelete);

   PageIndexMultiDelete(page, todelete, xldata->ntodelete);
  }

  GistClearPageHasGarbage(page);
  GistMarkTuplesDeleted(page);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }

 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
