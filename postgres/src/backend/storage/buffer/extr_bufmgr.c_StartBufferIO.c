
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int BufferDesc ;


 int Assert (int) ;
 int BM_DIRTY ;
 int BM_IO_IN_PROGRESS ;
 int BM_VALID ;
 int BufferDescriptorGetIOLock (int *) ;
 int * InProgressBuf ;
 int IsForInput ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LockBufHdr (int *) ;
 int UnlockBufHdr (int *,int) ;
 int WaitIO (int *) ;

__attribute__((used)) static bool
StartBufferIO(BufferDesc *buf, bool forInput)
{
 uint32 buf_state;

 Assert(!InProgressBuf);

 for (;;)
 {




  LWLockAcquire(BufferDescriptorGetIOLock(buf), LW_EXCLUSIVE);

  buf_state = LockBufHdr(buf);

  if (!(buf_state & BM_IO_IN_PROGRESS))
   break;







  UnlockBufHdr(buf, buf_state);
  LWLockRelease(BufferDescriptorGetIOLock(buf));
  WaitIO(buf);
 }



 if (forInput ? (buf_state & BM_VALID) : !(buf_state & BM_DIRTY))
 {

  UnlockBufHdr(buf, buf_state);
  LWLockRelease(BufferDescriptorGetIOLock(buf));
  return 0;
 }

 buf_state |= BM_IO_IN_PROGRESS;
 UnlockBufHdr(buf, buf_state);

 InProgressBuf = buf;
 IsForInput = forInput;

 return 1;
}
