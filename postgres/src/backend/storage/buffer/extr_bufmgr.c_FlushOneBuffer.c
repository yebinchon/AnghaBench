
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BufferDesc ;
typedef scalar_t__ Buffer ;


 int Assert (int) ;
 int BufferDescriptorGetContentLock (int *) ;
 int BufferIsLocal (scalar_t__) ;
 int BufferIsPinned (scalar_t__) ;
 int FlushBuffer (int *,int *) ;
 int * GetBufferDescriptor (scalar_t__) ;
 int LWLockHeldByMe (int ) ;

void
FlushOneBuffer(Buffer buffer)
{
 BufferDesc *bufHdr;


 Assert(!BufferIsLocal(buffer));

 Assert(BufferIsPinned(buffer));

 bufHdr = GetBufferDescriptor(buffer - 1);

 Assert(LWLockHeldByMe(BufferDescriptorGetContentLock(bufHdr)));

 FlushBuffer(bufHdr, ((void*)0));
}
