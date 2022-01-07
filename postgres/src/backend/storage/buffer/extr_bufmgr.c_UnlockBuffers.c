
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {scalar_t__ wait_backend_pid; } ;
typedef TYPE_1__ BufferDesc ;


 int BM_PIN_COUNT_WAITER ;
 int LockBufHdr (TYPE_1__*) ;
 scalar_t__ MyProcPid ;
 TYPE_1__* PinCountWaitBuf ;
 int UnlockBufHdr (TYPE_1__*,int) ;

void
UnlockBuffers(void)
{
 BufferDesc *buf = PinCountWaitBuf;

 if (buf)
 {
  uint32 buf_state;

  buf_state = LockBufHdr(buf);





  if ((buf_state & BM_PIN_COUNT_WAITER) != 0 &&
   buf->wait_backend_pid == MyProcPid)
   buf_state &= ~BM_PIN_COUNT_WAITER;

  UnlockBufHdr(buf, buf_state);

  PinCountWaitBuf = ((void*)0);
 }
}
