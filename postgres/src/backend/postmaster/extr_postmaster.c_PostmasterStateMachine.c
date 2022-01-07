
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AbortStartTime ;
 int Assert (int) ;
 scalar_t__ AutoVacPID ;
 int BACKEND_TYPE_ALL ;
 int BACKEND_TYPE_NORMAL ;
 int BACKEND_TYPE_WORKER ;
 int BackendList ;
 int BackupInProgress () ;
 scalar_t__ BgWriterPID ;
 int CancelBackup () ;
 scalar_t__ CheckpointerPID ;
 scalar_t__ CountChildren (int) ;
 int ExitPostmaster (int) ;
 int FatalError ;
 scalar_t__ ImmediateShutdown ;
 int LOG ;
 int LocalProcessControlFile (int) ;
 scalar_t__ NoShutdown ;
 scalar_t__ PM_NO_CHILDREN ;
 scalar_t__ PM_SHUTDOWN ;
 scalar_t__ PM_SHUTDOWN_2 ;
 scalar_t__ PM_STARTUP ;
 scalar_t__ PM_WAIT_BACKENDS ;
 scalar_t__ PM_WAIT_BACKUP ;
 scalar_t__ PM_WAIT_DEAD_END ;
 scalar_t__ PM_WAIT_READONLY ;
 scalar_t__ PgArchPID ;
 scalar_t__ PgStatPID ;
 scalar_t__ ReachedNormalRunning ;
 int ResetBackgroundWorkerCrashTimes () ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGUSR2 ;
 scalar_t__ STARTUP_CRASHED ;
 scalar_t__ STARTUP_RUNNING ;
 scalar_t__ Shutdown ;
 int SignalChildren (int ) ;
 scalar_t__ StartCheckpointer () ;
 scalar_t__ StartupDataBase () ;
 scalar_t__ StartupPID ;
 scalar_t__ StartupStatus ;
 scalar_t__ WalReceiverPID ;
 scalar_t__ WalWriterPID ;
 scalar_t__ dlist_is_empty (int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;
 scalar_t__ pmState ;
 int reset_shared () ;
 int restart_after_crash ;
 int shmem_exit (int) ;
 int signal_child (scalar_t__,int ) ;

__attribute__((used)) static void
PostmasterStateMachine(void)
{
 if (pmState == PM_WAIT_BACKUP)
 {



  if (!BackupInProgress())
   pmState = PM_WAIT_BACKENDS;
 }

 if (pmState == PM_WAIT_READONLY)
 {
  if (CountChildren(BACKEND_TYPE_NORMAL) == 0)
  {
   if (StartupPID != 0)
    signal_child(StartupPID, SIGTERM);
   if (WalReceiverPID != 0)
    signal_child(WalReceiverPID, SIGTERM);
   pmState = PM_WAIT_BACKENDS;
  }
 }





 if (pmState == PM_WAIT_BACKENDS)
 {
  if (CountChildren(BACKEND_TYPE_NORMAL | BACKEND_TYPE_WORKER) == 0 &&
   StartupPID == 0 &&
   WalReceiverPID == 0 &&
   BgWriterPID == 0 &&
   (CheckpointerPID == 0 ||
    (!FatalError && Shutdown < ImmediateShutdown)) &&
   WalWriterPID == 0 &&
   AutoVacPID == 0)
  {
   if (Shutdown >= ImmediateShutdown || FatalError)
   {




    pmState = PM_WAIT_DEAD_END;






   }
   else
   {





    Assert(Shutdown > NoShutdown);

    if (CheckpointerPID == 0)
     CheckpointerPID = StartCheckpointer();

    if (CheckpointerPID != 0)
    {
     signal_child(CheckpointerPID, SIGUSR2);
     pmState = PM_SHUTDOWN;
    }
    else
    {






     FatalError = 1;
     pmState = PM_WAIT_DEAD_END;


     SignalChildren(SIGQUIT);
     if (PgArchPID != 0)
      signal_child(PgArchPID, SIGQUIT);
     if (PgStatPID != 0)
      signal_child(PgStatPID, SIGQUIT);
    }
   }
  }
 }

 if (pmState == PM_SHUTDOWN_2)
 {






  if (PgArchPID == 0 && CountChildren(BACKEND_TYPE_ALL) == 0)
  {
   pmState = PM_WAIT_DEAD_END;
  }
 }

 if (pmState == PM_WAIT_DEAD_END)
 {
  if (dlist_is_empty(&BackendList) &&
   PgArchPID == 0 && PgStatPID == 0)
  {

   Assert(StartupPID == 0);
   Assert(WalReceiverPID == 0);
   Assert(BgWriterPID == 0);
   Assert(CheckpointerPID == 0);
   Assert(WalWriterPID == 0);
   Assert(AutoVacPID == 0);

   pmState = PM_NO_CHILDREN;
  }
 }
 if (Shutdown > NoShutdown && pmState == PM_NO_CHILDREN)
 {
  if (FatalError)
  {
   ereport(LOG, (errmsg("abnormal database system shutdown")));
   ExitPostmaster(1);
  }
  else
  {
   if (ReachedNormalRunning)
    CancelBackup();


   ExitPostmaster(0);
  }
 }
 if (pmState == PM_NO_CHILDREN &&
  (StartupStatus == STARTUP_CRASHED || !restart_after_crash))
  ExitPostmaster(1);





 if (FatalError && pmState == PM_NO_CHILDREN)
 {
  ereport(LOG,
    (errmsg("all server processes terminated; reinitializing")));


  ResetBackgroundWorkerCrashTimes();

  shmem_exit(1);


  LocalProcessControlFile(1);

  reset_shared();

  StartupPID = StartupDataBase();
  Assert(StartupPID != 0);
  StartupStatus = STARTUP_RUNNING;
  pmState = PM_STARTUP;

  AbortStartTime = 0;
 }
}
