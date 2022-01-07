
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint8 ;
typedef int XLogRedoAction ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_9__ {scalar_t__ EndRecPtr; TYPE_1__* blocks; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_8__ {int flags; } ;
typedef int RelFileNode ;
typedef int ReadBufferMode ;
typedef int Page ;
typedef scalar_t__ ForkNumber ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int ) ;
 int BKPBLOCK_WILL_INIT ;
 int BLK_DONE ;
 int BLK_NEEDS_REDO ;
 int BLK_NOTFOUND ;
 int BLK_RESTORED ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ERROR ;
 int FlushOneBuffer (int ) ;
 scalar_t__ INIT_FORKNUM ;
 int LockBuffer (int ,int ) ;
 int LockBufferForCleanup (int ) ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 scalar_t__ PageGetLSN (int ) ;
 int PageIsNew (int ) ;
 int PageSetLSN (int ,scalar_t__) ;
 int RBM_ZERO_AND_CLEANUP_LOCK ;
 int RBM_ZERO_AND_LOCK ;
 int RestoreBlockImage (TYPE_2__*,size_t,int ) ;
 int XLogReadBufferExtended (int ,scalar_t__,int ,int ) ;
 scalar_t__ XLogRecBlockImageApply (TYPE_2__*,size_t) ;
 int XLogRecGetBlockTag (TYPE_2__*,size_t,int *,scalar_t__*,int *) ;
 int XLogRecHasBlockImage (TYPE_2__*,size_t) ;
 int elog (int ,char*,...) ;

XLogRedoAction
XLogReadBufferForRedoExtended(XLogReaderState *record,
         uint8 block_id,
         ReadBufferMode mode, bool get_cleanup_lock,
         Buffer *buf)
{
 XLogRecPtr lsn = record->EndRecPtr;
 RelFileNode rnode;
 ForkNumber forknum;
 BlockNumber blkno;
 Page page;
 bool zeromode;
 bool willinit;

 if (!XLogRecGetBlockTag(record, block_id, &rnode, &forknum, &blkno))
 {

  elog(PANIC, "failed to locate backup block with ID %d", block_id);
 }





 zeromode = (mode == RBM_ZERO_AND_LOCK || mode == RBM_ZERO_AND_CLEANUP_LOCK);
 willinit = (record->blocks[block_id].flags & BKPBLOCK_WILL_INIT) != 0;
 if (willinit && !zeromode)
  elog(PANIC, "block with WILL_INIT flag in WAL record must be zeroed by redo routine");
 if (!willinit && zeromode)
  elog(PANIC, "block to be initialized in redo routine must be marked with WILL_INIT flag in the WAL record");


 if (XLogRecBlockImageApply(record, block_id))
 {
  Assert(XLogRecHasBlockImage(record, block_id));
  *buf = XLogReadBufferExtended(rnode, forknum, blkno,
           get_cleanup_lock ? RBM_ZERO_AND_CLEANUP_LOCK : RBM_ZERO_AND_LOCK);
  page = BufferGetPage(*buf);
  if (!RestoreBlockImage(record, block_id, page))
   elog(ERROR, "failed to restore block image");





  if (!PageIsNew(page))
  {
   PageSetLSN(page, lsn);
  }

  MarkBufferDirty(*buf);







  if (forknum == INIT_FORKNUM)
   FlushOneBuffer(*buf);

  return BLK_RESTORED;
 }
 else
 {
  *buf = XLogReadBufferExtended(rnode, forknum, blkno, mode);
  if (BufferIsValid(*buf))
  {
   if (mode != RBM_ZERO_AND_LOCK && mode != RBM_ZERO_AND_CLEANUP_LOCK)
   {
    if (get_cleanup_lock)
     LockBufferForCleanup(*buf);
    else
     LockBuffer(*buf, BUFFER_LOCK_EXCLUSIVE);
   }
   if (lsn <= PageGetLSN(BufferGetPage(*buf)))
    return BLK_DONE;
   else
    return BLK_NEEDS_REDO;
  }
  else
   return BLK_NOTFOUND;
 }
}
