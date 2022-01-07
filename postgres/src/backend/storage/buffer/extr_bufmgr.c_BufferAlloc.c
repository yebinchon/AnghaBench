
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;


typedef int uint32 ;
typedef int XLogRecPtr ;
struct TYPE_22__ {int tag; int buf_id; } ;
struct TYPE_19__ {int relNode; int dbNode; int spcNode; } ;
struct TYPE_20__ {TYPE_12__ node; } ;
struct TYPE_21__ {TYPE_1__ smgr_rnode; } ;
typedef TYPE_2__* SMgrRelation ;
typedef int LWLock ;
typedef int ForkNumber ;
typedef int BufferTag ;
typedef TYPE_3__ BufferDesc ;
typedef int * BufferAccessStrategy ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BM_CHECKPOINT_NEEDED ;
 int BM_DIRTY ;
 int BM_IO_ERROR ;
 int BM_JUST_DIRTIED ;
 int BM_PERMANENT ;
 int BM_TAG_VALID ;
 int BM_VALID ;
 int BUF_FLAG_MASK ;
 int BUF_STATE_GET_REFCOUNT (int) ;
 int BUF_USAGECOUNT_MASK ;
 int BUF_USAGECOUNT_ONE ;
 int BackendWritebackContext ;
 int * BufMappingPartitionLock (int) ;
 int BufTableDelete (int *,int) ;
 int BufTableHashCode (int *) ;
 int BufTableInsert (int *,int,int ) ;
 int BufTableLookup (int *,int) ;
 int * BufferDescriptorGetContentLock (TYPE_3__*) ;
 int BufferGetLSN (TYPE_3__*) ;
 int FlushBuffer (TYPE_3__*,int *) ;
 TYPE_3__* GetBufferDescriptor (int) ;
 int INIT_BUFFERTAG (int ,TYPE_12__,int ,int ) ;
 int INIT_FORKNUM ;
 int LWLockAcquire (int *,int ) ;
 scalar_t__ LWLockConditionalAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int LW_SHARED ;
 int LockBufHdr (TYPE_3__*) ;
 int PinBuffer (TYPE_3__*,int *) ;
 int PinBuffer_Locked (TYPE_3__*) ;
 char RELPERSISTENCE_PERMANENT ;
 int ReservePrivateRefCountEntry () ;
 int ScheduleBufferTagForWriteback (int *,int *) ;
 scalar_t__ StartBufferIO (TYPE_3__*,int) ;
 TYPE_3__* StrategyGetBuffer (int *,int*) ;
 scalar_t__ StrategyRejectBuffer (int *,TYPE_3__*) ;
 int TRACE_POSTGRESQL_BUFFER_WRITE_DIRTY_DONE (int ,int ,int ,int ,int ) ;
 int TRACE_POSTGRESQL_BUFFER_WRITE_DIRTY_START (int ,int ,int ,int ,int ) ;
 int UnlockBufHdr (TYPE_3__*,int) ;
 int UnpinBuffer (TYPE_3__*,int) ;
 scalar_t__ XLogNeedsFlush (int ) ;

__attribute__((used)) static BufferDesc *
BufferAlloc(SMgrRelation smgr, char relpersistence, ForkNumber forkNum,
   BlockNumber blockNum,
   BufferAccessStrategy strategy,
   bool *foundPtr)
{
 BufferTag newTag;
 uint32 newHash;
 LWLock *newPartitionLock;
 BufferTag oldTag;
 uint32 oldHash;
 LWLock *oldPartitionLock;
 uint32 oldFlags;
 int buf_id;
 BufferDesc *buf;
 bool valid;
 uint32 buf_state;


 INIT_BUFFERTAG(newTag, smgr->smgr_rnode.node, forkNum, blockNum);


 newHash = BufTableHashCode(&newTag);
 newPartitionLock = BufMappingPartitionLock(newHash);


 LWLockAcquire(newPartitionLock, LW_SHARED);
 buf_id = BufTableLookup(&newTag, newHash);
 if (buf_id >= 0)
 {





  buf = GetBufferDescriptor(buf_id);

  valid = PinBuffer(buf, strategy);


  LWLockRelease(newPartitionLock);

  *foundPtr = 1;

  if (!valid)
  {







   if (StartBufferIO(buf, 1))
   {




    *foundPtr = 0;
   }
  }

  return buf;
 }





 LWLockRelease(newPartitionLock);


 for (;;)
 {




  ReservePrivateRefCountEntry();





  buf = StrategyGetBuffer(strategy, &buf_state);

  Assert(BUF_STATE_GET_REFCOUNT(buf_state) == 0);


  oldFlags = buf_state & BUF_FLAG_MASK;


  PinBuffer_Locked(buf);
  if (oldFlags & BM_DIRTY)
  {
   if (LWLockConditionalAcquire(BufferDescriptorGetContentLock(buf),
           LW_SHARED))
   {







    if (strategy != ((void*)0))
    {
     XLogRecPtr lsn;


     buf_state = LockBufHdr(buf);
     lsn = BufferGetLSN(buf);
     UnlockBufHdr(buf, buf_state);

     if (XLogNeedsFlush(lsn) &&
      StrategyRejectBuffer(strategy, buf))
     {

      LWLockRelease(BufferDescriptorGetContentLock(buf));
      UnpinBuffer(buf, 1);
      continue;
     }
    }


    TRACE_POSTGRESQL_BUFFER_WRITE_DIRTY_START(forkNum, blockNum,
                smgr->smgr_rnode.node.spcNode,
                smgr->smgr_rnode.node.dbNode,
                smgr->smgr_rnode.node.relNode);

    FlushBuffer(buf, ((void*)0));
    LWLockRelease(BufferDescriptorGetContentLock(buf));

    ScheduleBufferTagForWriteback(&BackendWritebackContext,
             &buf->tag);

    TRACE_POSTGRESQL_BUFFER_WRITE_DIRTY_DONE(forkNum, blockNum,
               smgr->smgr_rnode.node.spcNode,
               smgr->smgr_rnode.node.dbNode,
               smgr->smgr_rnode.node.relNode);
   }
   else
   {




    UnpinBuffer(buf, 1);
    continue;
   }
  }





  if (oldFlags & BM_TAG_VALID)
  {





   oldTag = buf->tag;
   oldHash = BufTableHashCode(&oldTag);
   oldPartitionLock = BufMappingPartitionLock(oldHash);





   if (oldPartitionLock < newPartitionLock)
   {
    LWLockAcquire(oldPartitionLock, LW_EXCLUSIVE);
    LWLockAcquire(newPartitionLock, LW_EXCLUSIVE);
   }
   else if (oldPartitionLock > newPartitionLock)
   {
    LWLockAcquire(newPartitionLock, LW_EXCLUSIVE);
    LWLockAcquire(oldPartitionLock, LW_EXCLUSIVE);
   }
   else
   {

    LWLockAcquire(newPartitionLock, LW_EXCLUSIVE);
   }
  }
  else
  {

   LWLockAcquire(newPartitionLock, LW_EXCLUSIVE);

   oldPartitionLock = ((void*)0);

   oldHash = 0;
  }
  buf_id = BufTableInsert(&newTag, newHash, buf->buf_id);

  if (buf_id >= 0)
  {






   UnpinBuffer(buf, 1);


   if (oldPartitionLock != ((void*)0) &&
    oldPartitionLock != newPartitionLock)
    LWLockRelease(oldPartitionLock);



   buf = GetBufferDescriptor(buf_id);

   valid = PinBuffer(buf, strategy);


   LWLockRelease(newPartitionLock);

   *foundPtr = 1;

   if (!valid)
   {







    if (StartBufferIO(buf, 1))
    {




     *foundPtr = 0;
    }
   }

   return buf;
  }




  buf_state = LockBufHdr(buf);







  oldFlags = buf_state & BUF_FLAG_MASK;
  if (BUF_STATE_GET_REFCOUNT(buf_state) == 1 && !(oldFlags & BM_DIRTY))
   break;

  UnlockBufHdr(buf, buf_state);
  BufTableDelete(&newTag, newHash);
  if (oldPartitionLock != ((void*)0) &&
   oldPartitionLock != newPartitionLock)
   LWLockRelease(oldPartitionLock);
  LWLockRelease(newPartitionLock);
  UnpinBuffer(buf, 1);
 }
 buf->tag = newTag;
 buf_state &= ~(BM_VALID | BM_DIRTY | BM_JUST_DIRTIED |
       BM_CHECKPOINT_NEEDED | BM_IO_ERROR | BM_PERMANENT |
       BUF_USAGECOUNT_MASK);
 if (relpersistence == RELPERSISTENCE_PERMANENT || forkNum == INIT_FORKNUM)
  buf_state |= BM_TAG_VALID | BM_PERMANENT | BUF_USAGECOUNT_ONE;
 else
  buf_state |= BM_TAG_VALID | BUF_USAGECOUNT_ONE;

 UnlockBufHdr(buf, buf_state);

 if (oldPartitionLock != ((void*)0))
 {
  BufTableDelete(&oldTag, oldHash);
  if (oldPartitionLock != newPartitionLock)
   LWLockRelease(oldPartitionLock);
 }

 LWLockRelease(newPartitionLock);






 if (StartBufferIO(buf, 1))
  *foundPtr = 0;
 else
  *foundPtr = 1;

 return buf;
}
