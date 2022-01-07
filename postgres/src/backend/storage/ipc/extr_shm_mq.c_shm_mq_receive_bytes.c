
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int shm_mq_result ;
struct TYPE_5__ {scalar_t__ mqh_consume_pending; TYPE_2__* mqh_queue; } ;
typedef TYPE_1__ shm_mq_handle ;
struct TYPE_6__ {scalar_t__ mq_ring_size; scalar_t__ mq_ring_offset; int mq_bytes_written; scalar_t__ mq_detached; int * mq_ring; int mq_bytes_read; } ;
typedef TYPE_2__ shm_mq ;
typedef scalar_t__ Size ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ Min (scalar_t__,scalar_t__) ;
 int MyLatch ;
 int ResetLatch (int ) ;
 int SHM_MQ_DETACHED ;
 int SHM_MQ_SUCCESS ;
 int SHM_MQ_WOULD_BLOCK ;
 int WAIT_EVENT_MQ_RECEIVE ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WaitLatch (int ,int,int ,int ) ;
 scalar_t__ pg_atomic_read_u64 (int *) ;
 int pg_read_barrier () ;
 int shm_mq_inc_bytes_read (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static shm_mq_result
shm_mq_receive_bytes(shm_mq_handle *mqh, Size bytes_needed, bool nowait,
      Size *nbytesp, void **datap)
{
 shm_mq *mq = mqh->mqh_queue;
 Size ringsize = mq->mq_ring_size;
 uint64 used;
 uint64 written;

 for (;;)
 {
  Size offset;
  uint64 read;


  written = pg_atomic_read_u64(&mq->mq_bytes_written);





  read = pg_atomic_read_u64(&mq->mq_bytes_read) +
   mqh->mqh_consume_pending;
  used = written - read;
  Assert(used <= ringsize);
  offset = read % (uint64) ringsize;


  if (used >= bytes_needed || offset + used >= ringsize)
  {
   *nbytesp = Min(used, ringsize - offset);
   *datap = &mq->mq_ring[mq->mq_ring_offset + offset];






   pg_read_barrier();
   return SHM_MQ_SUCCESS;
  }
  if (mq->mq_detached)
  {






   pg_read_barrier();
   if (written != pg_atomic_read_u64(&mq->mq_bytes_written))
    continue;

   return SHM_MQ_DETACHED;
  }





  if (mqh->mqh_consume_pending > 0)
  {
   shm_mq_inc_bytes_read(mq, mqh->mqh_consume_pending);
   mqh->mqh_consume_pending = 0;
  }


  if (nowait)
   return SHM_MQ_WOULD_BLOCK;
  (void) WaitLatch(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
       WAIT_EVENT_MQ_RECEIVE);


  ResetLatch(MyLatch);


  CHECK_FOR_INTERRUPTS();
 }
}
