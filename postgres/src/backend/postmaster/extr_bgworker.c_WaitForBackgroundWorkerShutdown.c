
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int BgwHandleStatus ;
typedef int BackgroundWorkerHandle ;


 int BGWH_POSTMASTER_DIED ;
 int BGWH_STOPPED ;
 int CHECK_FOR_INTERRUPTS () ;
 int GetBackgroundWorkerPid (int *,int *) ;
 int MyLatch ;
 int ResetLatch (int ) ;
 int WAIT_EVENT_BGWORKER_SHUTDOWN ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WaitLatch (int ,int,int ,int ) ;

BgwHandleStatus
WaitForBackgroundWorkerShutdown(BackgroundWorkerHandle *handle)
{
 BgwHandleStatus status;
 int rc;

 for (;;)
 {
  pid_t pid;

  CHECK_FOR_INTERRUPTS();

  status = GetBackgroundWorkerPid(handle, &pid);
  if (status == BGWH_STOPPED)
   break;

  rc = WaitLatch(MyLatch,
        WL_LATCH_SET | WL_POSTMASTER_DEATH, 0,
        WAIT_EVENT_BGWORKER_SHUTDOWN);

  if (rc & WL_POSTMASTER_DEATH)
  {
   status = BGWH_POSTMASTER_DIED;
   break;
  }

  ResetLatch(MyLatch);
 }

 return status;
}
