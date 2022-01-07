
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_14__ {TYPE_1__* allProcs; } ;
struct TYPE_13__ {int bgwprocno; scalar_t__ firstFreeBuffer; int buffer_strategy_lock; int numBufferAllocs; } ;
struct TYPE_12__ {scalar_t__ freeNext; } ;
struct TYPE_11__ {int procLatch; } ;
typedef TYPE_2__ BufferDesc ;
typedef int * BufferAccessStrategy ;


 int AddBufferToRing (int *,TYPE_2__*) ;
 int Assert (int) ;
 scalar_t__ BUF_STATE_GET_REFCOUNT (int ) ;
 scalar_t__ BUF_STATE_GET_USAGECOUNT (int ) ;
 scalar_t__ BUF_USAGECOUNT_ONE ;
 scalar_t__ ClockSweepTick () ;
 int ERROR ;
 scalar_t__ FREENEXT_NOT_IN_LIST ;
 TYPE_2__* GetBufferDescriptor (scalar_t__) ;
 TYPE_2__* GetBufferFromRing (int *,int *) ;
 int INT_ACCESS_ONCE (int) ;
 int LockBufHdr (TYPE_2__*) ;
 int NBuffers ;
 TYPE_6__* ProcGlobal ;
 int SetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_5__* StrategyControl ;
 int UnlockBufHdr (TYPE_2__*,int ) ;
 int elog (int ,char*) ;
 int pg_atomic_fetch_add_u32 (int *,int) ;

BufferDesc *
StrategyGetBuffer(BufferAccessStrategy strategy, uint32 *buf_state)
{
 BufferDesc *buf;
 int bgwprocno;
 int trycounter;
 uint32 local_buf_state;





 if (strategy != ((void*)0))
 {
  buf = GetBufferFromRing(strategy, buf_state);
  if (buf != ((void*)0))
   return buf;
 }
 bgwprocno = INT_ACCESS_ONCE(StrategyControl->bgwprocno);
 if (bgwprocno != -1)
 {

  StrategyControl->bgwprocno = -1;






  SetLatch(&ProcGlobal->allProcs[bgwprocno].procLatch);
 }






 pg_atomic_fetch_add_u32(&StrategyControl->numBufferAllocs, 1);
 if (StrategyControl->firstFreeBuffer >= 0)
 {
  while (1)
  {

   SpinLockAcquire(&StrategyControl->buffer_strategy_lock);

   if (StrategyControl->firstFreeBuffer < 0)
   {
    SpinLockRelease(&StrategyControl->buffer_strategy_lock);
    break;
   }

   buf = GetBufferDescriptor(StrategyControl->firstFreeBuffer);
   Assert(buf->freeNext != FREENEXT_NOT_IN_LIST);


   StrategyControl->firstFreeBuffer = buf->freeNext;
   buf->freeNext = FREENEXT_NOT_IN_LIST;





   SpinLockRelease(&StrategyControl->buffer_strategy_lock);
   local_buf_state = LockBufHdr(buf);
   if (BUF_STATE_GET_REFCOUNT(local_buf_state) == 0
    && BUF_STATE_GET_USAGECOUNT(local_buf_state) == 0)
   {
    if (strategy != ((void*)0))
     AddBufferToRing(strategy, buf);
    *buf_state = local_buf_state;
    return buf;
   }
   UnlockBufHdr(buf, local_buf_state);

  }
 }


 trycounter = NBuffers;
 for (;;)
 {
  buf = GetBufferDescriptor(ClockSweepTick());





  local_buf_state = LockBufHdr(buf);

  if (BUF_STATE_GET_REFCOUNT(local_buf_state) == 0)
  {
   if (BUF_STATE_GET_USAGECOUNT(local_buf_state) != 0)
   {
    local_buf_state -= BUF_USAGECOUNT_ONE;

    trycounter = NBuffers;
   }
   else
   {

    if (strategy != ((void*)0))
     AddBufferToRing(strategy, buf);
    *buf_state = local_buf_state;
    return buf;
   }
  }
  else if (--trycounter == 0)
  {







   UnlockBufHdr(buf, local_buf_state);
   elog(ERROR, "no unpinned buffers available");
  }
  UnlockBufHdr(buf, local_buf_state);
 }
}
