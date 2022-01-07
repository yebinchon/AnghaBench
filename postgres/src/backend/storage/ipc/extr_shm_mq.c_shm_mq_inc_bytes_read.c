
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* mq_sender; int mq_bytes_read; } ;
typedef TYPE_1__ shm_mq ;
struct TYPE_5__ {int procLatch; } ;
typedef scalar_t__ Size ;
typedef TYPE_2__ PGPROC ;


 int Assert (int ) ;
 int SetLatch (int *) ;
 scalar_t__ pg_atomic_read_u64 (int *) ;
 int pg_atomic_write_u64 (int *,scalar_t__) ;
 int pg_read_barrier () ;

__attribute__((used)) static void
shm_mq_inc_bytes_read(shm_mq *mq, Size n)
{
 PGPROC *sender;
 pg_read_barrier();





 pg_atomic_write_u64(&mq->mq_bytes_read,
      pg_atomic_read_u64(&mq->mq_bytes_read) + n);





 sender = mq->mq_sender;
 Assert(sender != ((void*)0));
 SetLatch(&sender->procLatch);
}
