
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int workers_attached; int workers_total; int mutex; int workers_ready; } ;
typedef TYPE_1__ test_shm_mq_header ;
typedef int shm_toc ;
typedef int shm_mq_handle ;
typedef int dsm_segment ;
struct TYPE_8__ {int bgw_notify_pid; } ;
struct TYPE_7__ {int procLatch; } ;
typedef TYPE_2__ PGPROC ;
typedef int Datum ;


 TYPE_2__* BackendPidGetProc (int ) ;
 int BackgroundWorkerUnblockSignals () ;
 int DEBUG1 ;
 int DatumGetInt32 (int ) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 TYPE_4__* MyBgworkerEntry ;
 int PG_TEST_SHM_MQ_MAGIC ;
 int SIGTERM ;
 int SetLatch (int *) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int attach_to_queues (int *,int *,int,int **,int **) ;
 int copy_messages (int *,int *) ;
 int * dsm_attach (int ) ;
 int dsm_detach (int *) ;
 int dsm_segment_address (int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int handle_sigterm ;
 int pqsignal (int ,int ) ;
 int proc_exit (int) ;
 int * shm_toc_attach (int ,int ) ;
 TYPE_1__* shm_toc_lookup (int *,int ,int) ;

void
test_shm_mq_main(Datum main_arg)
{
 dsm_segment *seg;
 shm_toc *toc;
 shm_mq_handle *inqh;
 shm_mq_handle *outqh;
 volatile test_shm_mq_header *hdr;
 int myworkernumber;
 PGPROC *registrant;
 pqsignal(SIGTERM, handle_sigterm);
 BackgroundWorkerUnblockSignals();
 seg = dsm_attach(DatumGetInt32(main_arg));
 if (seg == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("unable to map dynamic shared memory segment")));
 toc = shm_toc_attach(PG_TEST_SHM_MQ_MAGIC, dsm_segment_address(seg));
 if (toc == ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("bad magic number in dynamic shared memory segment")));
 hdr = shm_toc_lookup(toc, 0, 0);
 SpinLockAcquire(&hdr->mutex);
 myworkernumber = ++hdr->workers_attached;
 SpinLockRelease(&hdr->mutex);
 if (myworkernumber > hdr->workers_total)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("too many message queue testing workers already")));




 attach_to_queues(seg, toc, myworkernumber, &inqh, &outqh);
 SpinLockAcquire(&hdr->mutex);
 ++hdr->workers_ready;
 SpinLockRelease(&hdr->mutex);
 registrant = BackendPidGetProc(MyBgworkerEntry->bgw_notify_pid);
 if (registrant == ((void*)0))
 {
  elog(DEBUG1, "registrant backend has exited prematurely");
  proc_exit(1);
 }
 SetLatch(&registrant->procLatch);


 copy_messages(inqh, outqh);





 dsm_detach(seg);
 proc_exit(1);
}
