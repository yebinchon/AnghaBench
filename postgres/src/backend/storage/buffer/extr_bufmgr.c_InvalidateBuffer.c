
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int tag; int state; } ;
typedef int LWLock ;
typedef int BufferTag ;
typedef TYPE_1__ BufferDesc ;


 int Assert (int) ;
 int BM_LOCKED ;
 int BM_TAG_VALID ;
 int BUFFERTAGS_EQUAL (int ,int ) ;
 int BUF_FLAG_MASK ;
 scalar_t__ BUF_STATE_GET_REFCOUNT (int) ;
 int BUF_USAGECOUNT_MASK ;
 int * BufMappingPartitionLock (int) ;
 int BufTableDelete (int *,int) ;
 int BufTableHashCode (int *) ;
 int BufferDescriptorGetBuffer (TYPE_1__*) ;
 int CLEAR_BUFFERTAG (int ) ;
 int ERROR ;
 scalar_t__ GetPrivateRefCount (int ) ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int LockBufHdr (TYPE_1__*) ;
 int StrategyFreeBuffer (TYPE_1__*) ;
 int UnlockBufHdr (TYPE_1__*,int) ;
 int WaitIO (TYPE_1__*) ;
 int elog (int ,char*) ;
 int pg_atomic_read_u32 (int *) ;

__attribute__((used)) static void
InvalidateBuffer(BufferDesc *buf)
{
 BufferTag oldTag;
 uint32 oldHash;
 LWLock *oldPartitionLock;
 uint32 oldFlags;
 uint32 buf_state;


 oldTag = buf->tag;

 buf_state = pg_atomic_read_u32(&buf->state);
 Assert(buf_state & BM_LOCKED);
 UnlockBufHdr(buf, buf_state);






 oldHash = BufTableHashCode(&oldTag);
 oldPartitionLock = BufMappingPartitionLock(oldHash);

retry:





 LWLockAcquire(oldPartitionLock, LW_EXCLUSIVE);


 buf_state = LockBufHdr(buf);


 if (!BUFFERTAGS_EQUAL(buf->tag, oldTag))
 {
  UnlockBufHdr(buf, buf_state);
  LWLockRelease(oldPartitionLock);
  return;
 }
 if (BUF_STATE_GET_REFCOUNT(buf_state) != 0)
 {
  UnlockBufHdr(buf, buf_state);
  LWLockRelease(oldPartitionLock);

  if (GetPrivateRefCount(BufferDescriptorGetBuffer(buf)) > 0)
   elog(ERROR, "buffer is pinned in InvalidateBuffer");
  WaitIO(buf);
  goto retry;
 }





 oldFlags = buf_state & BUF_FLAG_MASK;
 CLEAR_BUFFERTAG(buf->tag);
 buf_state &= ~(BUF_FLAG_MASK | BUF_USAGECOUNT_MASK);
 UnlockBufHdr(buf, buf_state);




 if (oldFlags & BM_TAG_VALID)
  BufTableDelete(&oldTag, oldHash);




 LWLockRelease(oldPartitionLock);




 StrategyFreeBuffer(buf);
}
