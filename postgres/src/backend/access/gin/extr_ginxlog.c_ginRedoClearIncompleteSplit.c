
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef int XLogRecPtr ;
struct TYPE_5__ {int EndRecPtr; } ;
typedef TYPE_1__ XLogReaderState ;
struct TYPE_6__ {int flags; } ;
typedef scalar_t__ Page ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int GIN_INCOMPLETE_SPLIT ;
 TYPE_4__* GinPageGetOpaque (scalar_t__) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void
ginRedoClearIncompleteSplit(XLogReaderState *record, uint8 block_id)
{
 XLogRecPtr lsn = record->EndRecPtr;
 Buffer buffer;
 Page page;

 if (XLogReadBufferForRedo(record, block_id, &buffer) == BLK_NEEDS_REDO)
 {
  page = (Page) BufferGetPage(buffer);
  GinPageGetOpaque(page)->flags &= ~GIN_INCOMPLETE_SPLIT;

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
