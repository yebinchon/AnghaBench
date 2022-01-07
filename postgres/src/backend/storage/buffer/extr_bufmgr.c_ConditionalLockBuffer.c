
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BufferDesc ;
typedef scalar_t__ Buffer ;


 int Assert (int ) ;
 int BufferDescriptorGetContentLock (int *) ;
 scalar_t__ BufferIsLocal (scalar_t__) ;
 int BufferIsValid (scalar_t__) ;
 int * GetBufferDescriptor (scalar_t__) ;
 int LWLockConditionalAcquire (int ,int ) ;
 int LW_EXCLUSIVE ;

bool
ConditionalLockBuffer(Buffer buffer)
{
 BufferDesc *buf;

 Assert(BufferIsValid(buffer));
 if (BufferIsLocal(buffer))
  return 1;

 buf = GetBufferDescriptor(buffer - 1);

 return LWLockConditionalAcquire(BufferDescriptorGetContentLock(buf),
         LW_EXCLUSIVE);
}
