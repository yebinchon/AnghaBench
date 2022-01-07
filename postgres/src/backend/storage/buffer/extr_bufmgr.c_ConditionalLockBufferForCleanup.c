
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int BufferDesc ;
typedef int Buffer ;


 int Assert (int) ;
 int BUFFER_LOCK_UNLOCK ;
 int BUF_STATE_GET_REFCOUNT (int) ;
 scalar_t__ BufferIsLocal (int) ;
 int BufferIsValid (int) ;
 int ConditionalLockBuffer (int) ;
 int * GetBufferDescriptor (int) ;
 int GetPrivateRefCount (int) ;
 int* LocalRefCount ;
 int LockBufHdr (int *) ;
 int LockBuffer (int,int ) ;
 int UnlockBufHdr (int *,int) ;

bool
ConditionalLockBufferForCleanup(Buffer buffer)
{
 BufferDesc *bufHdr;
 uint32 buf_state,
    refcount;

 Assert(BufferIsValid(buffer));

 if (BufferIsLocal(buffer))
 {
  refcount = LocalRefCount[-buffer - 1];

  Assert(refcount > 0);
  if (refcount != 1)
   return 0;

  return 1;
 }


 refcount = GetPrivateRefCount(buffer);
 Assert(refcount);
 if (refcount != 1)
  return 0;


 if (!ConditionalLockBuffer(buffer))
  return 0;

 bufHdr = GetBufferDescriptor(buffer - 1);
 buf_state = LockBufHdr(bufHdr);
 refcount = BUF_STATE_GET_REFCOUNT(buf_state);

 Assert(refcount > 0);
 if (refcount == 1)
 {

  UnlockBufHdr(bufHdr, buf_state);
  return 1;
 }


 UnlockBufHdr(bufHdr, buf_state);
 LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
 return 0;
}
