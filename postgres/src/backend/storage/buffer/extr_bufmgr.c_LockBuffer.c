
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BufferDesc ;
typedef scalar_t__ Buffer ;


 int Assert (int ) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferDescriptorGetContentLock (int *) ;
 scalar_t__ BufferIsLocal (scalar_t__) ;
 int BufferIsValid (scalar_t__) ;
 int ERROR ;
 int * GetBufferDescriptor (scalar_t__) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LW_SHARED ;
 int elog (int ,char*,int) ;

void
LockBuffer(Buffer buffer, int mode)
{
 BufferDesc *buf;

 Assert(BufferIsValid(buffer));
 if (BufferIsLocal(buffer))
  return;

 buf = GetBufferDescriptor(buffer - 1);

 if (mode == BUFFER_LOCK_UNLOCK)
  LWLockRelease(BufferDescriptorGetContentLock(buf));
 else if (mode == BUFFER_LOCK_SHARE)
  LWLockAcquire(BufferDescriptorGetContentLock(buf), LW_SHARED);
 else if (mode == BUFFER_LOCK_EXCLUSIVE)
  LWLockAcquire(BufferDescriptorGetContentLock(buf), LW_EXCLUSIVE);
 else
  elog(ERROR, "unrecognized buffer lock mode: %d", mode);
}
