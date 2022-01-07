
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mq_bytes_written; } ;
typedef TYPE_1__ shm_mq ;
typedef scalar_t__ Size ;


 scalar_t__ pg_atomic_read_u64 (int *) ;
 int pg_atomic_write_u64 (int *,scalar_t__) ;
 int pg_write_barrier () ;

__attribute__((used)) static void
shm_mq_inc_bytes_written(shm_mq *mq, Size n)
{





 pg_write_barrier();






 pg_atomic_write_u64(&mq->mq_bytes_written,
      pg_atomic_read_u64(&mq->mq_bytes_written) + n);
}
