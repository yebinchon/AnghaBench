
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int refcount; } ;
typedef TYPE_1__ PrivateRefCountEntry ;
typedef int Buffer ;


 int Assert (int) ;
 int BufferIsLocal (int ) ;
 int BufferIsValid (int ) ;
 TYPE_1__* GetPrivateRefCountEntry (int ,int) ;

__attribute__((used)) static inline int32
GetPrivateRefCount(Buffer buffer)
{
 PrivateRefCountEntry *ref;

 Assert(BufferIsValid(buffer));
 Assert(!BufferIsLocal(buffer));





 ref = GetPrivateRefCountEntry(buffer, 0);

 if (ref == ((void*)0))
  return 0;
 return ref->refcount;
}
