
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef int XLogRecPtr ;
struct TYPE_6__ {int EndRecPtr; } ;
typedef TYPE_1__ XLogReaderState ;
struct TYPE_7__ {int btpo_flags; } ;
typedef int Page ;
typedef int Buffer ;
typedef TYPE_2__* BTPageOpaque ;


 int Assert (int ) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BTP_INCOMPLETE_SPLIT ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int MarkBufferDirty (int ) ;
 int P_INCOMPLETE_SPLIT (TYPE_2__*) ;
 int PageGetSpecialPointer (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_1__*,int ,int *) ;

__attribute__((used)) static void
_bt_clear_incomplete_split(XLogReaderState *record, uint8 block_id)
{
 XLogRecPtr lsn = record->EndRecPtr;
 Buffer buf;

 if (XLogReadBufferForRedo(record, block_id, &buf) == BLK_NEEDS_REDO)
 {
  Page page = (Page) BufferGetPage(buf);
  BTPageOpaque pageop = (BTPageOpaque) PageGetSpecialPointer(page);

  Assert(P_INCOMPLETE_SPLIT(pageop));
  pageop->btpo_flags &= ~BTP_INCOMPLETE_SPLIT;

  PageSetLSN(page, lsn);
  MarkBufferDirty(buf);
 }
 if (BufferIsValid(buf))
  UnlockReleaseBuffer(buf);
}
