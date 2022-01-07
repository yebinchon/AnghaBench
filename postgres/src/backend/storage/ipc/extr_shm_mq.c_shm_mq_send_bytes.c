
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int shm_mq_result ;
struct TYPE_9__ {int mqh_counterparty_attached; int mqh_handle; TYPE_2__* mqh_queue; } ;
typedef TYPE_1__ shm_mq_handle ;
struct TYPE_10__ {scalar_t__ mq_ring_size; int mq_detached; scalar_t__ mq_ring_offset; int * mq_ring; TYPE_4__* mq_receiver; int mq_bytes_written; int mq_bytes_read; } ;
typedef TYPE_2__ shm_mq ;
struct TYPE_11__ {int procLatch; } ;
typedef scalar_t__ Size ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 scalar_t__ Min (scalar_t__,scalar_t__) ;
 int MyLatch ;
 int ResetLatch (int ) ;
 int SHM_MQ_DETACHED ;
 int SHM_MQ_SUCCESS ;
 int SHM_MQ_WOULD_BLOCK ;
 int SetLatch (int *) ;
 int WAIT_EVENT_MQ_SEND ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WaitLatch (int ,int,int ,int ) ;
 int memcpy (int *,char*,scalar_t__) ;
 scalar_t__ pg_atomic_read_u64 (int *) ;
 int pg_compiler_barrier () ;
 int pg_memory_barrier () ;
 scalar_t__ shm_mq_counterparty_gone (TYPE_2__*,int ) ;
 int * shm_mq_get_receiver (TYPE_2__*) ;
 int shm_mq_inc_bytes_written (TYPE_2__*,scalar_t__) ;
 int shm_mq_wait_internal (TYPE_2__*,TYPE_4__**,int ) ;

__attribute__((used)) static shm_mq_result
shm_mq_send_bytes(shm_mq_handle *mqh, Size nbytes, const void *data,
      bool nowait, Size *bytes_written)
{
 shm_mq *mq = mqh->mqh_queue;
 Size sent = 0;
 uint64 used;
 Size ringsize = mq->mq_ring_size;
 Size available;

 while (sent < nbytes)
 {
  uint64 rb;
  uint64 wb;


  rb = pg_atomic_read_u64(&mq->mq_bytes_read);
  wb = pg_atomic_read_u64(&mq->mq_bytes_written);
  Assert(wb >= rb);
  used = wb - rb;
  Assert(used <= ringsize);
  available = Min(ringsize - used, nbytes - sent);
  pg_compiler_barrier();
  if (mq->mq_detached)
  {
   *bytes_written = sent;
   return SHM_MQ_DETACHED;
  }

  if (available == 0 && !mqh->mqh_counterparty_attached)
  {




   if (nowait)
   {
    if (shm_mq_counterparty_gone(mq, mqh->mqh_handle))
    {
     *bytes_written = sent;
     return SHM_MQ_DETACHED;
    }
    if (shm_mq_get_receiver(mq) == ((void*)0))
    {
     *bytes_written = sent;
     return SHM_MQ_WOULD_BLOCK;
    }
   }
   else if (!shm_mq_wait_internal(mq, &mq->mq_receiver,
             mqh->mqh_handle))
   {
    mq->mq_detached = 1;
    *bytes_written = sent;
    return SHM_MQ_DETACHED;
   }
   mqh->mqh_counterparty_attached = 1;





  }
  else if (available == 0)
  {





   Assert(mqh->mqh_counterparty_attached);
   SetLatch(&mq->mq_receiver->procLatch);


   if (nowait)
   {
    *bytes_written = sent;
    return SHM_MQ_WOULD_BLOCK;
   }
   (void) WaitLatch(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
        WAIT_EVENT_MQ_SEND);


   ResetLatch(MyLatch);


   CHECK_FOR_INTERRUPTS();
  }
  else
  {
   Size offset;
   Size sendnow;

   offset = wb % (uint64) ringsize;
   sendnow = Min(available, ringsize - offset);
   pg_memory_barrier();
   memcpy(&mq->mq_ring[mq->mq_ring_offset + offset],
       (char *) data + sent, sendnow);
   sent += sendnow;







   Assert(sent == nbytes || sendnow == MAXALIGN(sendnow));
   shm_mq_inc_bytes_written(mq, MAXALIGN(sendnow));






  }
 }

 *bytes_written = sent;
 return SHM_MQ_SUCCESS;
}
