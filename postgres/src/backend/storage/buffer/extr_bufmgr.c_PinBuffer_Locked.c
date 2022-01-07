
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int state; } ;
struct TYPE_7__ {int refcount; } ;
typedef TYPE_1__ PrivateRefCountEntry ;
typedef TYPE_2__ BufferDesc ;
typedef int Buffer ;


 int Assert (int) ;
 int BM_LOCKED ;
 scalar_t__ BUF_REFCOUNT_ONE ;
 int BufferDescriptorGetBuffer (TYPE_2__*) ;
 int CurrentResourceOwner ;
 int * GetPrivateRefCountEntry (int ,int) ;
 TYPE_1__* NewPrivateRefCountEntry (int ) ;
 int ResourceOwnerRememberBuffer (int ,int ) ;
 int UnlockBufHdr (TYPE_2__*,int) ;
 int pg_atomic_read_u32 (int *) ;

__attribute__((used)) static void
PinBuffer_Locked(BufferDesc *buf)
{
 Buffer b;
 PrivateRefCountEntry *ref;
 uint32 buf_state;





 Assert(GetPrivateRefCountEntry(BufferDescriptorGetBuffer(buf), 0) == ((void*)0));





 buf_state = pg_atomic_read_u32(&buf->state);
 Assert(buf_state & BM_LOCKED);
 buf_state += BUF_REFCOUNT_ONE;
 UnlockBufHdr(buf, buf_state);

 b = BufferDescriptorGetBuffer(buf);

 ref = NewPrivateRefCountEntry(b);
 ref->refcount++;

 ResourceOwnerRememberBuffer(CurrentResourceOwner, b);
}
