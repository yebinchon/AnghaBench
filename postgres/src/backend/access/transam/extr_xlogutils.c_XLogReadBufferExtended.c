
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SMgrRelation ;
typedef int RelFileNode ;
typedef scalar_t__ ReadBufferMode ;
typedef int Page ;
typedef int ForkNumber ;
typedef scalar_t__ Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 int InRecovery ;
 int InvalidBackendId ;
 scalar_t__ InvalidBuffer ;
 int LockBuffer (scalar_t__,int ) ;
 scalar_t__ P_NEW ;
 scalar_t__ PageIsNew (int ) ;
 scalar_t__ RBM_NORMAL ;
 scalar_t__ RBM_NORMAL_NO_LOG ;
 scalar_t__ RBM_ZERO_AND_CLEANUP_LOCK ;
 scalar_t__ RBM_ZERO_AND_LOCK ;
 scalar_t__ ReadBufferWithoutRelcache (int ,int ,scalar_t__,scalar_t__,int *) ;
 int ReleaseBuffer (scalar_t__) ;
 int log_invalid_page (int ,int ,scalar_t__,int) ;
 int smgrcreate (int ,int ,int) ;
 scalar_t__ smgrnblocks (int ,int ) ;
 int smgropen (int ,int ) ;

Buffer
XLogReadBufferExtended(RelFileNode rnode, ForkNumber forknum,
        BlockNumber blkno, ReadBufferMode mode)
{
 BlockNumber lastblock;
 Buffer buffer;
 SMgrRelation smgr;

 Assert(blkno != P_NEW);


 smgr = smgropen(rnode, InvalidBackendId);
 smgrcreate(smgr, forknum, 1);

 lastblock = smgrnblocks(smgr, forknum);

 if (blkno < lastblock)
 {

  buffer = ReadBufferWithoutRelcache(rnode, forknum, blkno,
             mode, ((void*)0));
 }
 else
 {

  if (mode == RBM_NORMAL)
  {
   log_invalid_page(rnode, forknum, blkno, 0);
   return InvalidBuffer;
  }
  if (mode == RBM_NORMAL_NO_LOG)
   return InvalidBuffer;


  Assert(InRecovery);
  buffer = InvalidBuffer;
  do
  {
   if (buffer != InvalidBuffer)
   {
    if (mode == RBM_ZERO_AND_LOCK || mode == RBM_ZERO_AND_CLEANUP_LOCK)
     LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
    ReleaseBuffer(buffer);
   }
   buffer = ReadBufferWithoutRelcache(rnode, forknum,
              P_NEW, mode, ((void*)0));
  }
  while (BufferGetBlockNumber(buffer) < blkno);

  if (BufferGetBlockNumber(buffer) != blkno)
  {
   if (mode == RBM_ZERO_AND_LOCK || mode == RBM_ZERO_AND_CLEANUP_LOCK)
    LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
   ReleaseBuffer(buffer);
   buffer = ReadBufferWithoutRelcache(rnode, forknum, blkno,
              mode, ((void*)0));
  }
 }

 if (mode == RBM_NORMAL)
 {

  Page page = (Page) BufferGetPage(buffer);






  if (PageIsNew(page))
  {
   ReleaseBuffer(buffer);
   log_invalid_page(rnode, forknum, blkno, 1);
   return InvalidBuffer;
  }
 }

 return buffer;
}
