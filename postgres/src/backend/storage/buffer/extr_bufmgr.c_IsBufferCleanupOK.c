
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int BufferDesc ;
typedef int Buffer ;


 int Assert (int) ;
 int BUF_STATE_GET_REFCOUNT (int ) ;
 int BufferDescriptorGetContentLock (int *) ;
 scalar_t__ BufferIsLocal (int) ;
 int BufferIsValid (int) ;
 int * GetBufferDescriptor (int) ;
 int GetPrivateRefCount (int) ;
 int LWLockHeldByMeInMode (int ,int ) ;
 int LW_EXCLUSIVE ;
 int* LocalRefCount ;
 int LockBufHdr (int *) ;
 int UnlockBufHdr (int *,int ) ;

bool
IsBufferCleanupOK(Buffer buffer)
{
 BufferDesc *bufHdr;
 uint32 buf_state;

 Assert(BufferIsValid(buffer));

 if (BufferIsLocal(buffer))
 {

  if (LocalRefCount[-buffer - 1] != 1)
   return 0;

  return 1;
 }


 if (GetPrivateRefCount(buffer) != 1)
  return 0;

 bufHdr = GetBufferDescriptor(buffer - 1);


 Assert(LWLockHeldByMeInMode(BufferDescriptorGetContentLock(bufHdr),
        LW_EXCLUSIVE));

 buf_state = LockBufHdr(bufHdr);

 Assert(BUF_STATE_GET_REFCOUNT(buf_state) > 0);
 if (BUF_STATE_GET_REFCOUNT(buf_state) == 1)
 {

  UnlockBufHdr(bufHdr, buf_state);
  return 1;
 }

 UnlockBufHdr(bufHdr, buf_state);
 return 0;
}
