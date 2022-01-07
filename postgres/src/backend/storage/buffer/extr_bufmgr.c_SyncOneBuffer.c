
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
typedef int WritebackContext ;
struct TYPE_9__ {int tag; } ;
typedef int BufferTag ;
typedef TYPE_1__ BufferDesc ;


 int BM_DIRTY ;
 int BM_VALID ;
 int BUF_REUSABLE ;
 scalar_t__ BUF_STATE_GET_REFCOUNT (int) ;
 scalar_t__ BUF_STATE_GET_USAGECOUNT (int) ;
 int BUF_WRITTEN ;
 int BufferDescriptorGetContentLock (TYPE_1__*) ;
 int FlushBuffer (TYPE_1__*,int *) ;
 TYPE_1__* GetBufferDescriptor (int) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int LockBufHdr (TYPE_1__*) ;
 int PinBuffer_Locked (TYPE_1__*) ;
 int ReservePrivateRefCountEntry () ;
 int ScheduleBufferTagForWriteback (int *,int *) ;
 int UnlockBufHdr (TYPE_1__*,int) ;
 int UnpinBuffer (TYPE_1__*,int) ;

__attribute__((used)) static int
SyncOneBuffer(int buf_id, bool skip_recently_used, WritebackContext *wb_context)
{
 BufferDesc *bufHdr = GetBufferDescriptor(buf_id);
 int result = 0;
 uint32 buf_state;
 BufferTag tag;

 ReservePrivateRefCountEntry();
 buf_state = LockBufHdr(bufHdr);

 if (BUF_STATE_GET_REFCOUNT(buf_state) == 0 &&
  BUF_STATE_GET_USAGECOUNT(buf_state) == 0)
 {
  result |= BUF_REUSABLE;
 }
 else if (skip_recently_used)
 {

  UnlockBufHdr(bufHdr, buf_state);
  return result;
 }

 if (!(buf_state & BM_VALID) || !(buf_state & BM_DIRTY))
 {

  UnlockBufHdr(bufHdr, buf_state);
  return result;
 }





 PinBuffer_Locked(bufHdr);
 LWLockAcquire(BufferDescriptorGetContentLock(bufHdr), LW_SHARED);

 FlushBuffer(bufHdr, ((void*)0));

 LWLockRelease(BufferDescriptorGetContentLock(bufHdr));

 tag = bufHdr->tag;

 UnpinBuffer(bufHdr, 1);

 ScheduleBufferTagForWriteback(wb_context, &tag);

 return result | BUF_WRITTEN;
}
