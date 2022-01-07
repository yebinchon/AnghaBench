
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct timeval {int dummy; } ;
typedef int fd_set ;
struct TYPE_5__ {int sock; } ;
typedef TYPE_1__ Port ;


 scalar_t__ AbortStartTime ;
 int Assert (int) ;
 scalar_t__ AutoVacPID ;
 scalar_t__ AutoVacuumingActive () ;
 int BackendStartup (TYPE_1__*) ;
 scalar_t__ BgWriterPID ;
 int BlockSig ;
 scalar_t__ CheckpointerPID ;
 TYPE_1__* ConnCreate (scalar_t__) ;
 int ConnFree (TYPE_1__*) ;
 int DetermineSleepTime (struct timeval*) ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 scalar_t__ FatalError ;
 scalar_t__ HaveCrashedWorker ;
 scalar_t__ ImmediateShutdown ;
 int IsBinaryUpgrade ;
 int LOG ;
 scalar_t__* ListenSocket ;
 scalar_t__ Logging_collector ;
 int MAXLISTEN ;
 int MaybeStartWalReceiver () ;
 scalar_t__ MyProcPid ;
 scalar_t__ PGINVALID_SOCKET ;
 int PG_SETMASK (int *) ;
 scalar_t__ PM_HOT_STANDBY ;
 scalar_t__ PM_RECOVERY ;
 scalar_t__ PM_RUN ;
 scalar_t__ PM_WAIT_DEAD_END ;
 scalar_t__ PgArchPID ;
 scalar_t__ PgArchStartupAllowed () ;
 scalar_t__ PgStatPID ;
 int RecheckDataDirLockFile () ;
 int SECS_PER_MINUTE ;
 int SIGKILL ;
 scalar_t__ SIGKILL_CHILDREN_AFTER_SECS ;
 int SIGQUIT ;
 int SIGUSR2 ;
 int STATUS_ERROR ;
 int SendStop ;
 scalar_t__ Shutdown ;
 scalar_t__ StartAutoVacLauncher () ;
 scalar_t__ StartBackgroundWriter () ;
 scalar_t__ StartCheckpointer () ;
 scalar_t__ StartWalWriter () ;
 scalar_t__ StartWorkerNeeded ;
 int StreamClose (int ) ;
 scalar_t__ SysLoggerPID ;
 scalar_t__ SysLogger_Start () ;
 int TerminateChildren (int ) ;
 int TouchSocketFiles () ;
 int TouchSocketLockFiles () ;
 int UnBlockSig ;
 scalar_t__ WalReceiverRequested ;
 scalar_t__ WalWriterPID ;
 int avlauncher_needs_signal ;
 int ereport (int ,int ) ;
 int errcode_for_socket_access () ;
 int errmsg (char*) ;
 scalar_t__ errno ;
 int initMasks (int *) ;
 int kill (scalar_t__,int ) ;
 int maybe_start_bgworkers () ;
 int memcpy (char*,char*,int) ;
 int pg_usleep (long) ;
 scalar_t__ pgarch_start () ;
 scalar_t__ pgstat_start () ;
 scalar_t__ pmState ;
 scalar_t__ pthread_is_threaded_np () ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int start_autovac_launcher ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int
ServerLoop(void)
{
 fd_set readmask;
 int nSockets;
 time_t last_lockfile_recheck_time,
    last_touch_time;

 last_lockfile_recheck_time = last_touch_time = time(((void*)0));

 nSockets = initMasks(&readmask);

 for (;;)
 {
  fd_set rmask;
  int selres;
  time_t now;
  memcpy((char *) &rmask, (char *) &readmask, sizeof(fd_set));

  if (pmState == PM_WAIT_DEAD_END)
  {
   PG_SETMASK(&UnBlockSig);

   pg_usleep(100000L);
   selres = 0;

   PG_SETMASK(&BlockSig);
  }
  else
  {

   struct timeval timeout;


   DetermineSleepTime(&timeout);

   PG_SETMASK(&UnBlockSig);

   selres = select(nSockets, &rmask, ((void*)0), ((void*)0), &timeout);

   PG_SETMASK(&BlockSig);
  }


  if (selres < 0)
  {
   if (errno != EINTR && errno != EWOULDBLOCK)
   {
    ereport(LOG,
      (errcode_for_socket_access(),
       errmsg("select() failed in postmaster: %m")));
    return STATUS_ERROR;
   }
  }





  if (selres > 0)
  {
   int i;

   for (i = 0; i < MAXLISTEN; i++)
   {
    if (ListenSocket[i] == PGINVALID_SOCKET)
     break;
    if (FD_ISSET(ListenSocket[i], &rmask))
    {
     Port *port;

     port = ConnCreate(ListenSocket[i]);
     if (port)
     {
      BackendStartup(port);





      StreamClose(port->sock);
      ConnFree(port);
     }
    }
   }
  }


  if (SysLoggerPID == 0 && Logging_collector)
   SysLoggerPID = SysLogger_Start();






  if (pmState == PM_RUN || pmState == PM_RECOVERY ||
   pmState == PM_HOT_STANDBY)
  {
   if (CheckpointerPID == 0)
    CheckpointerPID = StartCheckpointer();
   if (BgWriterPID == 0)
    BgWriterPID = StartBackgroundWriter();
  }






  if (WalWriterPID == 0 && pmState == PM_RUN)
   WalWriterPID = StartWalWriter();







  if (!IsBinaryUpgrade && AutoVacPID == 0 &&
   (AutoVacuumingActive() || start_autovac_launcher) &&
   pmState == PM_RUN)
  {
   AutoVacPID = StartAutoVacLauncher();
   if (AutoVacPID != 0)
    start_autovac_launcher = 0;
  }


  if (PgStatPID == 0 &&
   (pmState == PM_RUN || pmState == PM_HOT_STANDBY))
   PgStatPID = pgstat_start();


  if (PgArchPID == 0 && PgArchStartupAllowed())
   PgArchPID = pgarch_start();


  if (avlauncher_needs_signal)
  {
   avlauncher_needs_signal = 0;
   if (AutoVacPID != 0)
    kill(AutoVacPID, SIGUSR2);
  }


  if (WalReceiverRequested)
   MaybeStartWalReceiver();


  if (StartWorkerNeeded || HaveCrashedWorker)
   maybe_start_bgworkers();
  now = time(((void*)0));
  if ((Shutdown >= ImmediateShutdown || (FatalError && !SendStop)) &&
   AbortStartTime != 0 &&
   (now - AbortStartTime) >= SIGKILL_CHILDREN_AFTER_SECS)
  {

   TerminateChildren(SIGKILL);

   AbortStartTime = 0;
  }
  if (now - last_lockfile_recheck_time >= 1 * SECS_PER_MINUTE)
  {
   if (!RecheckDataDirLockFile())
   {
    ereport(LOG,
      (errmsg("performing immediate shutdown because data directory lock file is invalid")));
    kill(MyProcPid, SIGQUIT);
   }
   last_lockfile_recheck_time = now;
  }






  if (now - last_touch_time >= 58 * SECS_PER_MINUTE)
  {
   TouchSocketFiles();
   TouchSocketLockFiles();
   last_touch_time = now;
  }
 }
}
