
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_13__ {int wait_backend_pid; int state; } ;
struct TYPE_12__ {scalar_t__ refcount; } ;
typedef TYPE_1__ PrivateRefCountEntry ;
typedef TYPE_2__ BufferDesc ;
typedef int Buffer ;


 int Assert (int) ;
 int BM_LOCKED ;
 int BM_PIN_COUNT_WAITER ;
 scalar_t__ BUF_REFCOUNT_ONE ;
 int BUF_STATE_GET_REFCOUNT (int) ;
 int BufferDescriptorGetBuffer (TYPE_2__*) ;
 int BufferDescriptorGetContentLock (TYPE_2__*) ;
 int BufferDescriptorGetIOLock (TYPE_2__*) ;
 int CurrentResourceOwner ;
 int ForgetPrivateRefCountEntry (TYPE_1__*) ;
 TYPE_1__* GetPrivateRefCountEntry (int ,int) ;
 int LWLockHeldByMe (int ) ;
 int LockBufHdr (TYPE_2__*) ;
 int ProcSendSignal (int) ;
 int ResourceOwnerForgetBuffer (int ,int ) ;
 int UnlockBufHdr (TYPE_2__*,int) ;
 int WaitBufHdrUnlocked (TYPE_2__*) ;
 scalar_t__ pg_atomic_compare_exchange_u32 (int *,int*,int) ;
 int pg_atomic_read_u32 (int *) ;

__attribute__((used)) static void
UnpinBuffer(BufferDesc *buf, bool fixOwner)
{
 PrivateRefCountEntry *ref;
 Buffer b = BufferDescriptorGetBuffer(buf);


 ref = GetPrivateRefCountEntry(b, 0);
 Assert(ref != ((void*)0));

 if (fixOwner)
  ResourceOwnerForgetBuffer(CurrentResourceOwner, b);

 Assert(ref->refcount > 0);
 ref->refcount--;
 if (ref->refcount == 0)
 {
  uint32 buf_state;
  uint32 old_buf_state;


  Assert(!LWLockHeldByMe(BufferDescriptorGetContentLock(buf)));
  Assert(!LWLockHeldByMe(BufferDescriptorGetIOLock(buf)));







  old_buf_state = pg_atomic_read_u32(&buf->state);
  for (;;)
  {
   if (old_buf_state & BM_LOCKED)
    old_buf_state = WaitBufHdrUnlocked(buf);

   buf_state = old_buf_state;

   buf_state -= BUF_REFCOUNT_ONE;

   if (pg_atomic_compare_exchange_u32(&buf->state, &old_buf_state,
              buf_state))
    break;
  }


  if (buf_state & BM_PIN_COUNT_WAITER)
  {







   buf_state = LockBufHdr(buf);

   if ((buf_state & BM_PIN_COUNT_WAITER) &&
    BUF_STATE_GET_REFCOUNT(buf_state) == 1)
   {

    int wait_backend_pid = buf->wait_backend_pid;

    buf_state &= ~BM_PIN_COUNT_WAITER;
    UnlockBufHdr(buf, buf_state);
    ProcSendSignal(wait_backend_pid);
   }
   else
    UnlockBufHdr(buf, buf_state);
  }
  ForgetPrivateRefCountEntry(ref);
 }
}
