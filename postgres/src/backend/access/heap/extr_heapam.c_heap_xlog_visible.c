
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; int cutoff_xid; } ;
typedef TYPE_1__ xl_heap_visible ;
typedef scalar_t__ XLogRedoAction ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_9__ {scalar_t__ EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int Size ;
typedef int Relation ;
typedef int RelFileNode ;
typedef int Page ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BLCKSZ ;
 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BLK_RESTORED ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int CreateFakeRelcacheEntry (int ) ;
 int FreeFakeRelcacheEntry (int ) ;
 scalar_t__ InHotStandby ;
 int InvalidBuffer ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int PageGetFreeSpace (int ) ;
 scalar_t__ PageGetLSN (int ) ;
 int PageInit (int ,int ,int ) ;
 scalar_t__ PageIsNew (int ) ;
 int PageSetAllVisible (int ) ;
 int RBM_ZERO_ON_ERROR ;
 int ReleaseBuffer (int ) ;
 int ResolveRecoveryConflictWithSnapshot (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int VISIBILITYMAP_VALID_BITS ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 scalar_t__ XLogReadBufferForRedoExtended (TYPE_2__*,int ,int ,int,int *) ;
 int XLogRecGetBlockTag (TYPE_2__*,int,int *,int *,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int XLogRecordPageWithFreeSpace (int ,int ,int ) ;
 int visibilitymap_pin (int ,int ,int *) ;
 int visibilitymap_set (int ,int ,int ,scalar_t__,int ,int ,int) ;

__attribute__((used)) static void
heap_xlog_visible(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_heap_visible *xlrec = (xl_heap_visible *) XLogRecGetData(record);
 Buffer vmbuffer = InvalidBuffer;
 Buffer buffer;
 Page page;
 RelFileNode rnode;
 BlockNumber blkno;
 XLogRedoAction action;

 XLogRecGetBlockTag(record, 1, &rnode, ((void*)0), &blkno);
 if (InHotStandby)
  ResolveRecoveryConflictWithSnapshot(xlrec->cutoff_xid, rnode);






 action = XLogReadBufferForRedo(record, 1, &buffer);
 if (action == BLK_NEEDS_REDO)
 {
  page = BufferGetPage(buffer);

  PageSetAllVisible(page);

  MarkBufferDirty(buffer);
 }
 else if (action == BLK_RESTORED)
 {





 }

 if (BufferIsValid(buffer))
 {
  Size space = PageGetFreeSpace(BufferGetPage(buffer));

  UnlockReleaseBuffer(buffer);
  if (xlrec->flags & VISIBILITYMAP_VALID_BITS)
   XLogRecordPageWithFreeSpace(rnode, blkno, space);
 }







 if (XLogReadBufferForRedoExtended(record, 0, RBM_ZERO_ON_ERROR, 0,
           &vmbuffer) == BLK_NEEDS_REDO)
 {
  Page vmpage = BufferGetPage(vmbuffer);
  Relation reln;


  if (PageIsNew(vmpage))
   PageInit(vmpage, BLCKSZ, 0);





  LockBuffer(vmbuffer, BUFFER_LOCK_UNLOCK);

  reln = CreateFakeRelcacheEntry(rnode);
  visibilitymap_pin(reln, blkno, &vmbuffer);
  if (lsn > PageGetLSN(vmpage))
   visibilitymap_set(reln, blkno, InvalidBuffer, lsn, vmbuffer,
         xlrec->cutoff_xid, xlrec->flags);

  ReleaseBuffer(vmbuffer);
  FreeFakeRelcacheEntry(reln);
 }
 else if (BufferIsValid(vmbuffer))
  UnlockReleaseBuffer(vmbuffer);
}
