
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ shm_mq_result ;
struct TYPE_3__ {char* data; int len; } ;
typedef TYPE_1__ shm_mq_iovec ;


 int Assert (int) ;
 int CHECK_FOR_INTERRUPTS () ;
 int EOF ;
 int MyLatch ;
 int PROCSIG_PARALLEL_MESSAGE ;
 int ResetLatch (int ) ;
 scalar_t__ SHM_MQ_DETACHED ;
 scalar_t__ SHM_MQ_SUCCESS ;
 scalar_t__ SHM_MQ_WOULD_BLOCK ;
 int SendProcSignal (scalar_t__,int ,int ) ;
 int WAIT_EVENT_MQ_PUT_MESSAGE ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WaitLatch (int ,int,int ,int ) ;
 int pq_mq_busy ;
 int * pq_mq_handle ;
 int pq_mq_parallel_master_backend_id ;
 scalar_t__ pq_mq_parallel_master_pid ;
 int shm_mq_detach (int *) ;
 scalar_t__ shm_mq_sendv (int *,TYPE_1__*,int,int) ;

__attribute__((used)) static int
mq_putmessage(char msgtype, const char *s, size_t len)
{
 shm_mq_iovec iov[2];
 shm_mq_result result;
 if (pq_mq_busy)
 {
  if (pq_mq_handle != ((void*)0))
   shm_mq_detach(pq_mq_handle);
  pq_mq_handle = ((void*)0);
  return EOF;
 }







 if (pq_mq_handle == ((void*)0))
  return 0;

 pq_mq_busy = 1;

 iov[0].data = &msgtype;
 iov[0].len = 1;
 iov[1].data = s;
 iov[1].len = len;

 Assert(pq_mq_handle != ((void*)0));

 for (;;)
 {
  result = shm_mq_sendv(pq_mq_handle, iov, 2, 1);

  if (pq_mq_parallel_master_pid != 0)
   SendProcSignal(pq_mq_parallel_master_pid,
         PROCSIG_PARALLEL_MESSAGE,
         pq_mq_parallel_master_backend_id);

  if (result != SHM_MQ_WOULD_BLOCK)
   break;

  (void) WaitLatch(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
       WAIT_EVENT_MQ_PUT_MESSAGE);
  ResetLatch(MyLatch);
  CHECK_FOR_INTERRUPTS();
 }

 pq_mq_busy = 0;

 Assert(result == SHM_MQ_SUCCESS || result == SHM_MQ_DETACHED);
 if (result != SHM_MQ_SUCCESS)
  return EOF;
 return 0;
}
