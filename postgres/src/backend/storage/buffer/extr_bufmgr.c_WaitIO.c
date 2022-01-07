
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int BufferDesc ;


 int BM_IO_IN_PROGRESS ;
 int BufferDescriptorGetIOLock (int *) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int LockBufHdr (int *) ;
 int UnlockBufHdr (int *,int) ;

__attribute__((used)) static void
WaitIO(BufferDesc *buf)
{







 for (;;)
 {
  uint32 buf_state;






  buf_state = LockBufHdr(buf);
  UnlockBufHdr(buf, buf_state);

  if (!(buf_state & BM_IO_IN_PROGRESS))
   break;
  LWLockAcquire(BufferDescriptorGetIOLock(buf), LW_SHARED);
  LWLockRelease(BufferDescriptorGetIOLock(buf));
 }
}
