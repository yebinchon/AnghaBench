
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mq_detached; int mq_mutex; } ;
typedef TYPE_1__ shm_mq ;
typedef int pid_t ;
typedef int PGPROC ;
typedef scalar_t__ BgwHandleStatus ;
typedef int BackgroundWorkerHandle ;


 scalar_t__ BGWH_NOT_YET_STARTED ;
 scalar_t__ BGWH_STARTED ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ GetBackgroundWorkerPid (int *,int *) ;
 int MyLatch ;
 int ResetLatch (int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WAIT_EVENT_MQ_INTERNAL ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WaitLatch (int ,int,int ,int ) ;

__attribute__((used)) static bool
shm_mq_wait_internal(shm_mq *mq, PGPROC **ptr, BackgroundWorkerHandle *handle)
{
 bool result = 0;

 for (;;)
 {
  BgwHandleStatus status;
  pid_t pid;


  SpinLockAcquire(&mq->mq_mutex);
  result = (*ptr != ((void*)0));
  SpinLockRelease(&mq->mq_mutex);


  if (mq->mq_detached)
  {
   result = 0;
   break;
  }
  if (result)
   break;

  if (handle != ((void*)0))
  {

   status = GetBackgroundWorkerPid(handle, &pid);
   if (status != BGWH_STARTED && status != BGWH_NOT_YET_STARTED)
   {
    result = 0;
    break;
   }
  }


  (void) WaitLatch(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
       WAIT_EVENT_MQ_INTERNAL);


  ResetLatch(MyLatch);


  CHECK_FOR_INTERRUPTS();
 }

 return result;
}
