
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ lastBlockVacuumed; } ;
typedef TYPE_1__ xl_btree_vacuum ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_11__ {int btpo_flags; } ;
typedef scalar_t__ Size ;
typedef int RelFileNode ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_3__* BTPageOpaque ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BTP_HAS_GARBAGE ;
 scalar_t__ BlockNumberIsValid (scalar_t__) ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ HotStandbyActiveInReplay () ;
 int LockBufferForCleanup (int ) ;
 int MAIN_FORKNUM ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageIndexMultiDelete (scalar_t__,int *,int) ;
 int PageSetLSN (scalar_t__,int ) ;
 int RBM_NORMAL ;
 int RBM_NORMAL_NO_LOG ;
 int UnlockReleaseBuffer (int ) ;
 int XLogReadBufferExtended (int ,int ,scalar_t__,int ) ;
 scalar_t__ XLogReadBufferForRedoExtended (TYPE_2__*,int ,int ,int,int *) ;
 char* XLogRecGetBlockData (TYPE_2__*,int ,scalar_t__*) ;
 int XLogRecGetBlockTag (TYPE_2__*,int ,int *,int *,scalar_t__*) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;

__attribute__((used)) static void
btree_xlog_vacuum(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 Buffer buffer;
 Page page;
 BTPageOpaque opaque;
 if (XLogReadBufferForRedoExtended(record, 0, RBM_NORMAL, 1, &buffer)
  == BLK_NEEDS_REDO)
 {
  char *ptr;
  Size len;

  ptr = XLogRecGetBlockData(record, 0, &len);

  page = (Page) BufferGetPage(buffer);

  if (len > 0)
  {
   OffsetNumber *unused;
   OffsetNumber *unend;

   unused = (OffsetNumber *) ptr;
   unend = (OffsetNumber *) ((char *) ptr + len);

   if ((unend - unused) > 0)
    PageIndexMultiDelete(page, unused, unend - unused);
  }





  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  opaque->btpo_flags &= ~BTP_HAS_GARBAGE;

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
