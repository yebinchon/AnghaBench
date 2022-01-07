
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int Size ;
typedef int RelFileNode ;
typedef int Page ;
typedef int FSMAddress ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BLCKSZ ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BufferGetPage (int ) ;
 int FSM_FORKNUM ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirtyHint (int ,int) ;
 int PageInit (int ,int ,int ) ;
 scalar_t__ PageIsNew (int ) ;
 int RBM_ZERO_ON_ERROR ;
 int UnlockReleaseBuffer (int ) ;
 int XLogReadBufferExtended (int ,int ,int ,int ) ;
 int fsm_get_location (int ,int *) ;
 int fsm_logical_to_physical (int ) ;
 scalar_t__ fsm_set_avail (int ,int ,int) ;
 int fsm_space_avail_to_cat (int ) ;

void
XLogRecordPageWithFreeSpace(RelFileNode rnode, BlockNumber heapBlk,
       Size spaceAvail)
{
 int new_cat = fsm_space_avail_to_cat(spaceAvail);
 FSMAddress addr;
 uint16 slot;
 BlockNumber blkno;
 Buffer buf;
 Page page;


 addr = fsm_get_location(heapBlk, &slot);
 blkno = fsm_logical_to_physical(addr);


 buf = XLogReadBufferExtended(rnode, FSM_FORKNUM, blkno, RBM_ZERO_ON_ERROR);
 LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);

 page = BufferGetPage(buf);
 if (PageIsNew(page))
  PageInit(page, BLCKSZ, 0);

 if (fsm_set_avail(page, slot, new_cat))
  MarkBufferDirtyHint(buf, 0);
 UnlockReleaseBuffer(buf);
}
