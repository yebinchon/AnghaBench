
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refcount; } ;
typedef TYPE_1__ PrivateRefCountEntry ;
typedef int Buffer ;


 int Assert (int ) ;
 scalar_t__ BufferIsLocal (int) ;
 int BufferIsPinned (int) ;
 int CurrentResourceOwner ;
 TYPE_1__* GetPrivateRefCountEntry (int,int) ;
 int * LocalRefCount ;
 int ResourceOwnerEnlargeBuffers (int ) ;
 int ResourceOwnerRememberBuffer (int ,int) ;

void
IncrBufferRefCount(Buffer buffer)
{
 Assert(BufferIsPinned(buffer));
 ResourceOwnerEnlargeBuffers(CurrentResourceOwner);
 if (BufferIsLocal(buffer))
  LocalRefCount[-buffer - 1]++;
 else
 {
  PrivateRefCountEntry *ref;

  ref = GetPrivateRefCountEntry(buffer, 1);
  Assert(ref != ((void*)0));
  ref->refcount++;
 }
 ResourceOwnerRememberBuffer(CurrentResourceOwner, buffer);
}
