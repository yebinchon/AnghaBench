
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int BufferDesc ;


 int Assert (int) ;
 int BM_CHECKPOINT_NEEDED ;
 int BM_DIRTY ;
 int BM_IO_ERROR ;
 int BM_IO_IN_PROGRESS ;
 int BM_JUST_DIRTIED ;
 int BufferDescriptorGetIOLock (int *) ;
 int * InProgressBuf ;
 int LWLockRelease (int ) ;
 int LockBufHdr (int *) ;
 int UnlockBufHdr (int *,int) ;

__attribute__((used)) static void
TerminateBufferIO(BufferDesc *buf, bool clear_dirty, uint32 set_flag_bits)
{
 uint32 buf_state;

 Assert(buf == InProgressBuf);

 buf_state = LockBufHdr(buf);

 Assert(buf_state & BM_IO_IN_PROGRESS);

 buf_state &= ~(BM_IO_IN_PROGRESS | BM_IO_ERROR);
 if (clear_dirty && !(buf_state & BM_JUST_DIRTIED))
  buf_state &= ~(BM_DIRTY | BM_CHECKPOINT_NEEDED);

 buf_state |= set_flag_bits;
 UnlockBufHdr(buf, buf_state);

 InProgressBuf = ((void*)0);

 LWLockRelease(BufferDescriptorGetIOLock(buf));
}
