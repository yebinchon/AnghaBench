
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nitems; int latestRemovedXid; } ;
typedef TYPE_1__ xl_btree_delete ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_11__ {int btpo_flags; } ;
typedef int RelFileNode ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int Buffer ;
typedef TYPE_3__* BTPageOpaque ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BTP_HAS_GARBAGE ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ InHotStandby ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageIndexMultiDelete (scalar_t__,int *,int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int ResolveRecoveryConflictWithSnapshot (int ,int ) ;
 scalar_t__ SizeOfBtreeDelete ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int ,int *,int *,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 scalar_t__ XLogRecGetDataLen (TYPE_2__*) ;

__attribute__((used)) static void
btree_xlog_delete(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_btree_delete *xlrec = (xl_btree_delete *) XLogRecGetData(record);
 Buffer buffer;
 Page page;
 BTPageOpaque opaque;
 if (InHotStandby)
 {
  RelFileNode rnode;

  XLogRecGetBlockTag(record, 0, &rnode, ((void*)0), ((void*)0));

  ResolveRecoveryConflictWithSnapshot(xlrec->latestRemovedXid, rnode);
 }





 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  page = (Page) BufferGetPage(buffer);

  if (XLogRecGetDataLen(record) > SizeOfBtreeDelete)
  {
   OffsetNumber *unused;

   unused = (OffsetNumber *) ((char *) xlrec + SizeOfBtreeDelete);

   PageIndexMultiDelete(page, unused, xlrec->nitems);
  }





  opaque = (BTPageOpaque) PageGetSpecialPointer(page);
  opaque->btpo_flags &= ~BTP_HAS_GARBAGE;

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
