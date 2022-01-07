
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_9__ {int state; } ;
struct TYPE_8__ {scalar_t__ refcount; } ;
typedef TYPE_1__ PrivateRefCountEntry ;
typedef TYPE_2__ BufferDesc ;
typedef int * BufferAccessStrategy ;
typedef int Buffer ;


 int Assert (int) ;
 int BM_LOCKED ;
 scalar_t__ BM_MAX_USAGE_COUNT ;
 int BM_VALID ;
 scalar_t__ BUF_REFCOUNT_ONE ;
 scalar_t__ BUF_STATE_GET_USAGECOUNT (int) ;
 scalar_t__ BUF_USAGECOUNT_ONE ;
 int BufferDescriptorGetBuffer (TYPE_2__*) ;
 int CurrentResourceOwner ;
 TYPE_1__* GetPrivateRefCountEntry (int ,int) ;
 TYPE_1__* NewPrivateRefCountEntry (int ) ;
 int ReservePrivateRefCountEntry () ;
 int ResourceOwnerRememberBuffer (int ,int ) ;
 int WaitBufHdrUnlocked (TYPE_2__*) ;
 scalar_t__ pg_atomic_compare_exchange_u32 (int *,int*,int) ;
 int pg_atomic_read_u32 (int *) ;

__attribute__((used)) static bool
PinBuffer(BufferDesc *buf, BufferAccessStrategy strategy)
{
 Buffer b = BufferDescriptorGetBuffer(buf);
 bool result;
 PrivateRefCountEntry *ref;

 ref = GetPrivateRefCountEntry(b, 1);

 if (ref == ((void*)0))
 {
  uint32 buf_state;
  uint32 old_buf_state;

  ReservePrivateRefCountEntry();
  ref = NewPrivateRefCountEntry(b);

  old_buf_state = pg_atomic_read_u32(&buf->state);
  for (;;)
  {
   if (old_buf_state & BM_LOCKED)
    old_buf_state = WaitBufHdrUnlocked(buf);

   buf_state = old_buf_state;


   buf_state += BUF_REFCOUNT_ONE;

   if (strategy == ((void*)0))
   {

    if (BUF_STATE_GET_USAGECOUNT(buf_state) < BM_MAX_USAGE_COUNT)
     buf_state += BUF_USAGECOUNT_ONE;
   }
   else
   {




    if (BUF_STATE_GET_USAGECOUNT(buf_state) == 0)
     buf_state += BUF_USAGECOUNT_ONE;
   }

   if (pg_atomic_compare_exchange_u32(&buf->state, &old_buf_state,
              buf_state))
   {
    result = (buf_state & BM_VALID) != 0;
    break;
   }
  }
 }
 else
 {

  result = 1;
 }

 ref->refcount++;
 Assert(ref->refcount > 0);
 ResourceOwnerRememberBuffer(CurrentResourceOwner, b);
 return result;
}
