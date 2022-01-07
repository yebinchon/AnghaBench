
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nworkers; } ;
typedef TYPE_1__ worker_state ;
struct TYPE_7__ {int workers_ready; int mutex; } ;
typedef TYPE_2__ test_shm_mq_header ;


 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int ERROR ;
 int MyLatch ;
 int PG_WAIT_EXTENSION ;
 int ResetLatch (int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WaitLatch (int ,int,int ,int ) ;
 int check_worker_status (TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
wait_for_workers_to_become_ready(worker_state *wstate,
         volatile test_shm_mq_header *hdr)
{
 bool result = 0;

 for (;;)
 {
  int workers_ready;


  SpinLockAcquire(&hdr->mutex);
  workers_ready = hdr->workers_ready;
  SpinLockRelease(&hdr->mutex);
  if (workers_ready >= wstate->nworkers)
  {
   result = 1;
   break;
  }


  if (!check_worker_status(wstate))
  {
   result = 0;
   break;
  }


  (void) WaitLatch(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
       PG_WAIT_EXTENSION);


  ResetLatch(MyLatch);


  CHECK_FOR_INTERRUPTS();
 }

 if (!result)
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("one or more background workers failed to start")));
}
