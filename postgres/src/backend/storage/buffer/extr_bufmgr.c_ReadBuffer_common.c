
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int uint32 ;
typedef int instr_time ;
struct TYPE_27__ {int blk_read_time; int shared_blks_read; int shared_blks_written; int shared_blks_hit; int local_blks_read; int local_blks_written; int local_blks_hit; } ;
struct TYPE_23__ {int relNode; int dbNode; int spcNode; } ;
struct TYPE_26__ {int backend; TYPE_1__ node; } ;
struct TYPE_25__ {int state; } ;
struct TYPE_24__ {TYPE_7__ smgr_rnode; } ;
typedef TYPE_2__* SMgrRelation ;
typedef scalar_t__ ReadBufferMode ;
typedef int Page ;
typedef int ForkNumber ;
typedef TYPE_3__ BufferDesc ;
typedef int BufferAccessStrategy ;
typedef int Buffer ;
typedef int BlockNumber ;
typedef scalar_t__ Block ;


 int Assert (int) ;
 int BLCKSZ ;
 int BM_VALID ;
 scalar_t__ BufHdrGetBlock (TYPE_3__*) ;
 TYPE_3__* BufferAlloc (TYPE_2__*,char,int ,int ,int ,int*) ;
 int BufferDescriptorGetBuffer (TYPE_3__*) ;
 int BufferDescriptorGetContentLock (TYPE_3__*) ;
 int CurrentResourceOwner ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int INSTR_TIME_ADD (int ,int ) ;
 int INSTR_TIME_GET_MICROSEC (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int INSTR_TIME_SUBTRACT (int ,int ) ;
 int LWLockAcquire (int ,int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ LocalBufHdrGetBlock (TYPE_3__*) ;
 TYPE_3__* LocalBufferAlloc (TYPE_2__*,int ,int ,int*) ;
 int LockBufHdr (TYPE_3__*) ;
 int LockBufferForCleanup (int ) ;
 int MemSet (char*,int ,int ) ;
 int P_NEW ;
 int PageIsNew (int ) ;
 int PageIsVerified (int ,int ) ;
 scalar_t__ RBM_NORMAL ;
 scalar_t__ RBM_NORMAL_NO_LOG ;
 scalar_t__ RBM_ZERO_AND_CLEANUP_LOCK ;
 scalar_t__ RBM_ZERO_AND_LOCK ;
 scalar_t__ RBM_ZERO_ON_ERROR ;
 int ResourceOwnerEnlargeBuffers (int ) ;
 int SmgrIsTemp (TYPE_2__*) ;
 int StartBufferIO (TYPE_3__*,int) ;
 int TRACE_POSTGRESQL_BUFFER_READ_DONE (int ,int ,int ,int ,int ,int ,int,int) ;
 int TRACE_POSTGRESQL_BUFFER_READ_START (int ,int ,int ,int ,int ,int ,int) ;
 int TerminateBufferIO (TYPE_3__*,int,int) ;
 int UnlockBufHdr (TYPE_3__*,int) ;
 scalar_t__ VacuumCostActive ;
 int VacuumCostBalance ;
 scalar_t__ VacuumCostPageHit ;
 scalar_t__ VacuumCostPageMiss ;
 int VacuumPageHit ;
 int VacuumPageMiss ;
 int WARNING ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int ) ;
 TYPE_8__ pgBufferUsage ;
 int pg_atomic_read_u32 (int *) ;
 int pg_atomic_unlocked_write_u32 (int *,int) ;
 int pgstat_count_buffer_read_time (int ) ;
 int relpath (TYPE_7__,int ) ;
 int smgrextend (TYPE_2__*,int ,int ,char*,int) ;
 int smgrnblocks (TYPE_2__*,int ) ;
 int smgrread (TYPE_2__*,int ,int ,char*) ;
 scalar_t__ track_io_timing ;
 scalar_t__ zero_damaged_pages ;

__attribute__((used)) static Buffer
ReadBuffer_common(SMgrRelation smgr, char relpersistence, ForkNumber forkNum,
      BlockNumber blockNum, ReadBufferMode mode,
      BufferAccessStrategy strategy, bool *hit)
{
 BufferDesc *bufHdr;
 Block bufBlock;
 bool found;
 bool isExtend;
 bool isLocalBuf = SmgrIsTemp(smgr);

 *hit = 0;


 ResourceOwnerEnlargeBuffers(CurrentResourceOwner);

 isExtend = (blockNum == P_NEW);

 TRACE_POSTGRESQL_BUFFER_READ_START(forkNum, blockNum,
            smgr->smgr_rnode.node.spcNode,
            smgr->smgr_rnode.node.dbNode,
            smgr->smgr_rnode.node.relNode,
            smgr->smgr_rnode.backend,
            isExtend);


 if (isExtend)
  blockNum = smgrnblocks(smgr, forkNum);

 if (isLocalBuf)
 {
  bufHdr = LocalBufferAlloc(smgr, forkNum, blockNum, &found);
  if (found)
   pgBufferUsage.local_blks_hit++;
  else if (isExtend)
   pgBufferUsage.local_blks_written++;
  else if (mode == RBM_NORMAL || mode == RBM_NORMAL_NO_LOG ||
     mode == RBM_ZERO_ON_ERROR)
   pgBufferUsage.local_blks_read++;
 }
 else
 {




  bufHdr = BufferAlloc(smgr, relpersistence, forkNum, blockNum,
        strategy, &found);
  if (found)
   pgBufferUsage.shared_blks_hit++;
  else if (isExtend)
   pgBufferUsage.shared_blks_written++;
  else if (mode == RBM_NORMAL || mode == RBM_NORMAL_NO_LOG ||
     mode == RBM_ZERO_ON_ERROR)
   pgBufferUsage.shared_blks_read++;
 }




 if (found)
 {
  if (!isExtend)
  {

   *hit = 1;
   VacuumPageHit++;

   if (VacuumCostActive)
    VacuumCostBalance += VacuumCostPageHit;

   TRACE_POSTGRESQL_BUFFER_READ_DONE(forkNum, blockNum,
             smgr->smgr_rnode.node.spcNode,
             smgr->smgr_rnode.node.dbNode,
             smgr->smgr_rnode.node.relNode,
             smgr->smgr_rnode.backend,
             isExtend,
             found);





   if (!isLocalBuf)
   {
    if (mode == RBM_ZERO_AND_LOCK)
     LWLockAcquire(BufferDescriptorGetContentLock(bufHdr),
          LW_EXCLUSIVE);
    else if (mode == RBM_ZERO_AND_CLEANUP_LOCK)
     LockBufferForCleanup(BufferDescriptorGetBuffer(bufHdr));
   }

   return BufferDescriptorGetBuffer(bufHdr);
  }
  bufBlock = isLocalBuf ? LocalBufHdrGetBlock(bufHdr) : BufHdrGetBlock(bufHdr);
  if (!PageIsNew((Page) bufBlock))
   ereport(ERROR,
     (errmsg("unexpected data beyond EOF in block %u of relation %s",
       blockNum, relpath(smgr->smgr_rnode, forkNum)),
      errhint("This has been seen to occur with buggy kernels; consider updating your system.")));







  if (isLocalBuf)
  {

   uint32 buf_state = pg_atomic_read_u32(&bufHdr->state);

   Assert(buf_state & BM_VALID);
   buf_state &= ~BM_VALID;
   pg_atomic_unlocked_write_u32(&bufHdr->state, buf_state);
  }
  else
  {





   do
   {
    uint32 buf_state = LockBufHdr(bufHdr);

    Assert(buf_state & BM_VALID);
    buf_state &= ~BM_VALID;
    UnlockBufHdr(bufHdr, buf_state);
   } while (!StartBufferIO(bufHdr, 1));
  }
 }
 Assert(!(pg_atomic_read_u32(&bufHdr->state) & BM_VALID));

 bufBlock = isLocalBuf ? LocalBufHdrGetBlock(bufHdr) : BufHdrGetBlock(bufHdr);

 if (isExtend)
 {

  MemSet((char *) bufBlock, 0, BLCKSZ);

  smgrextend(smgr, forkNum, blockNum, (char *) bufBlock, 0);







 }
 else
 {




  if (mode == RBM_ZERO_AND_LOCK || mode == RBM_ZERO_AND_CLEANUP_LOCK)
   MemSet((char *) bufBlock, 0, BLCKSZ);
  else
  {
   instr_time io_start,
      io_time;

   if (track_io_timing)
    INSTR_TIME_SET_CURRENT(io_start);

   smgrread(smgr, forkNum, blockNum, (char *) bufBlock);

   if (track_io_timing)
   {
    INSTR_TIME_SET_CURRENT(io_time);
    INSTR_TIME_SUBTRACT(io_time, io_start);
    pgstat_count_buffer_read_time(INSTR_TIME_GET_MICROSEC(io_time));
    INSTR_TIME_ADD(pgBufferUsage.blk_read_time, io_time);
   }


   if (!PageIsVerified((Page) bufBlock, blockNum))
   {
    if (mode == RBM_ZERO_ON_ERROR || zero_damaged_pages)
    {
     ereport(WARNING,
       (errcode(ERRCODE_DATA_CORRUPTED),
        errmsg("invalid page in block %u of relation %s; zeroing out page",
         blockNum,
         relpath(smgr->smgr_rnode, forkNum))));
     MemSet((char *) bufBlock, 0, BLCKSZ);
    }
    else
     ereport(ERROR,
       (errcode(ERRCODE_DATA_CORRUPTED),
        errmsg("invalid page in block %u of relation %s",
         blockNum,
         relpath(smgr->smgr_rnode, forkNum))));
   }
  }
 }
 if ((mode == RBM_ZERO_AND_LOCK || mode == RBM_ZERO_AND_CLEANUP_LOCK) &&
  !isLocalBuf)
 {
  LWLockAcquire(BufferDescriptorGetContentLock(bufHdr), LW_EXCLUSIVE);
 }

 if (isLocalBuf)
 {

  uint32 buf_state = pg_atomic_read_u32(&bufHdr->state);

  buf_state |= BM_VALID;
  pg_atomic_unlocked_write_u32(&bufHdr->state, buf_state);
 }
 else
 {

  TerminateBufferIO(bufHdr, 0, BM_VALID);
 }

 VacuumPageMiss++;
 if (VacuumCostActive)
  VacuumCostBalance += VacuumCostPageMiss;

 TRACE_POSTGRESQL_BUFFER_READ_DONE(forkNum, blockNum,
           smgr->smgr_rnode.node.spcNode,
           smgr->smgr_rnode.node.dbNode,
           smgr->smgr_rnode.node.relNode,
           smgr->smgr_rnode.backend,
           isExtend,
           found);

 return BufferDescriptorGetBuffer(bufHdr);
}
