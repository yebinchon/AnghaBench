
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int parentOffset; int deleteXid; int rightLink; } ;
typedef TYPE_1__ ginxlogDeletePage ;
typedef int XLogRecPtr ;
struct TYPE_8__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_9__ {int flags; int rightlink; } ;
typedef int Page ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int GIN_DELETED ;
 int GinPageDeletePostingItem (int ,int ) ;
 TYPE_6__* GinPageGetOpaque (int ) ;
 int GinPageIsData (int ) ;
 int GinPageIsLeaf (int ) ;
 int GinPageSetDeleteXid (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;

__attribute__((used)) static void
ginRedoDeletePage(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 ginxlogDeletePage *data = (ginxlogDeletePage *) XLogRecGetData(record);
 Buffer dbuffer;
 Buffer pbuffer;
 Buffer lbuffer;
 Page page;





 if (XLogReadBufferForRedo(record, 2, &lbuffer) == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(lbuffer);
  Assert(GinPageIsData(page));
  GinPageGetOpaque(page)->rightlink = data->rightLink;
  PageSetLSN(page, lsn);
  MarkBufferDirty(lbuffer);
 }

 if (XLogReadBufferForRedo(record, 0, &dbuffer) == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(dbuffer);
  Assert(GinPageIsData(page));
  GinPageGetOpaque(page)->flags = GIN_DELETED;
  GinPageSetDeleteXid(page, data->deleteXid);
  PageSetLSN(page, lsn);
  MarkBufferDirty(dbuffer);
 }

 if (XLogReadBufferForRedo(record, 1, &pbuffer) == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(pbuffer);
  Assert(GinPageIsData(page));
  Assert(!GinPageIsLeaf(page));
  GinPageDeletePostingItem(page, data->parentOffset);
  PageSetLSN(page, lsn);
  MarkBufferDirty(pbuffer);
 }

 if (BufferIsValid(lbuffer))
  UnlockReleaseBuffer(lbuffer);
 if (BufferIsValid(pbuffer))
  UnlockReleaseBuffer(pbuffer);
 if (BufferIsValid(dbuffer))
  UnlockReleaseBuffer(dbuffer);
}
