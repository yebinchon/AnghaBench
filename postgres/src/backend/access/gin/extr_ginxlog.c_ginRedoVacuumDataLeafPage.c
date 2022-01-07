
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__ ginxlogVacuumDataLeafPage ;
typedef int XLogRecPtr ;
struct TYPE_7__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int Size ;
typedef int Page ;
typedef int Buffer ;


 int Assert (int ) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int GinPageIsData (int ) ;
 int GinPageIsLeaf (int ) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 scalar_t__ XLogRecGetBlockData (TYPE_2__*,int ,int *) ;
 int ginRedoRecompress (int ,int *) ;

__attribute__((used)) static void
ginRedoVacuumDataLeafPage(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 Buffer buffer;

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  Page page = BufferGetPage(buffer);
  Size len;
  ginxlogVacuumDataLeafPage *xlrec;

  xlrec = (ginxlogVacuumDataLeafPage *) XLogRecGetBlockData(record, 0, &len);

  Assert(GinPageIsLeaf(page));
  Assert(GinPageIsData(page));

  ginRedoRecompress(page, &xlrec->data);
  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
