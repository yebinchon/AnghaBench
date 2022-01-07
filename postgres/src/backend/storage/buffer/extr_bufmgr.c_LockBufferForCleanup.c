
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {scalar_t__ wait_backend_pid; } ;
typedef TYPE_1__ BufferDesc ;
typedef int Buffer ;


 int Assert (int) ;
 int BM_PIN_COUNT_WAITER ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BUF_STATE_GET_REFCOUNT (int) ;
 scalar_t__ BufferIsLocal (int) ;
 int BufferIsValid (int) ;
 int ERROR ;
 TYPE_1__* GetBufferDescriptor (int) ;
 int GetPrivateRefCount (int) ;
 scalar_t__ InHotStandby ;
 int* LocalRefCount ;
 int LockBufHdr (TYPE_1__*) ;
 int LockBuffer (int,int ) ;
 scalar_t__ MyProcPid ;
 int PG_WAIT_BUFFER_PIN ;
 TYPE_1__* PinCountWaitBuf ;
 int ProcWaitForSignal (int ) ;
 int ResolveRecoveryConflictWithBufferPin () ;
 int SetStartupBufferPinWaitBufId (int) ;
 int UnlockBufHdr (TYPE_1__*,int) ;
 int elog (int ,char*,...) ;

void
LockBufferForCleanup(Buffer buffer)
{
 BufferDesc *bufHdr;

 Assert(BufferIsValid(buffer));
 Assert(PinCountWaitBuf == ((void*)0));

 if (BufferIsLocal(buffer))
 {

  if (LocalRefCount[-buffer - 1] != 1)
   elog(ERROR, "incorrect local pin count: %d",
     LocalRefCount[-buffer - 1]);

  return;
 }


 if (GetPrivateRefCount(buffer) != 1)
  elog(ERROR, "incorrect local pin count: %d",
    GetPrivateRefCount(buffer));

 bufHdr = GetBufferDescriptor(buffer - 1);

 for (;;)
 {
  uint32 buf_state;


  LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);
  buf_state = LockBufHdr(bufHdr);

  Assert(BUF_STATE_GET_REFCOUNT(buf_state) > 0);
  if (BUF_STATE_GET_REFCOUNT(buf_state) == 1)
  {

   UnlockBufHdr(bufHdr, buf_state);
   return;
  }

  if (buf_state & BM_PIN_COUNT_WAITER)
  {
   UnlockBufHdr(bufHdr, buf_state);
   LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
   elog(ERROR, "multiple backends attempting to wait for pincount 1");
  }
  bufHdr->wait_backend_pid = MyProcPid;
  PinCountWaitBuf = bufHdr;
  buf_state |= BM_PIN_COUNT_WAITER;
  UnlockBufHdr(bufHdr, buf_state);
  LockBuffer(buffer, BUFFER_LOCK_UNLOCK);


  if (InHotStandby)
  {

   SetStartupBufferPinWaitBufId(buffer - 1);

   ResolveRecoveryConflictWithBufferPin();

   SetStartupBufferPinWaitBufId(-1);
  }
  else
   ProcWaitForSignal(PG_WAIT_BUFFER_PIN);
  buf_state = LockBufHdr(bufHdr);
  if ((buf_state & BM_PIN_COUNT_WAITER) != 0 &&
   bufHdr->wait_backend_pid == MyProcPid)
   buf_state &= ~BM_PIN_COUNT_WAITER;
  UnlockBufHdr(bufHdr, buf_state);

  PinCountWaitBuf = ((void*)0);

 }
}
