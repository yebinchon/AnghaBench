
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BufferIsLocal (int) ;
 int BufferIsValid (int) ;
 int CurrentResourceOwner ;
 int ERROR ;
 int GetBufferDescriptor (int) ;
 scalar_t__* LocalRefCount ;
 int ResourceOwnerForgetBuffer (int ,int) ;
 int UnpinBuffer (int ,int) ;
 int elog (int ,char*,int) ;

void
ReleaseBuffer(Buffer buffer)
{
 if (!BufferIsValid(buffer))
  elog(ERROR, "bad buffer ID: %d", buffer);

 if (BufferIsLocal(buffer))
 {
  ResourceOwnerForgetBuffer(CurrentResourceOwner, buffer);

  Assert(LocalRefCount[-buffer - 1] > 0);
  LocalRefCount[-buffer - 1]--;
  return;
 }

 UnpinBuffer(GetBufferDescriptor(buffer - 1), 1);
}
