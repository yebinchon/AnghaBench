
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_4__ {int EndRecPtr; } ;
typedef TYPE_1__ XLogReaderState ;
typedef int Page ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BLK_RESTORED ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int GistClearFollowRight (int ) ;
 int GistPageSetNSN (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void
gistRedoClearFollowRight(XLogReaderState *record, uint8 block_id)
{
 XLogRecPtr lsn = record->EndRecPtr;
 Buffer buffer;
 Page page;
 XLogRedoAction action;





 action = XLogReadBufferForRedo(record, block_id, &buffer);
 if (action == BLK_NEEDS_REDO || action == BLK_RESTORED)
 {
  page = BufferGetPage(buffer);

  GistPageSetNSN(page, lsn);
  GistClearFollowRight(page);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
