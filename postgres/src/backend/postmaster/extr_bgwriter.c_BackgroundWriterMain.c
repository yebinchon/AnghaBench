
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sigjmp_buf ;
typedef int WritebackContext ;
typedef scalar_t__ TimestampTz ;
struct TYPE_2__ {int pgprocno; } ;
typedef int MemoryContext ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AbortBufferIO () ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int AtEOXact_Buffers (int) ;
 int AtEOXact_Files (int) ;
 int AtEOXact_HashTables (int) ;
 int AtEOXact_SMgr () ;
 int BgBufferSync (int *) ;
 int BgSigHupHandler ;
 int BgWriterDelay ;
 int BlockSig ;
 int ConditionVariableCancelSleep () ;
 int EmitErrorReport () ;
 int ExitOnAnyError ;
 scalar_t__ FirstCallSinceLastCheckpoint () ;
 int FlushErrorState () ;
 void* GetCurrentTimestamp () ;
 scalar_t__ GetLastImportantRecPtr () ;
 int HIBERNATE_FACTOR ;
 int HOLD_INTERRUPTS () ;
 int LOG_SNAPSHOT_INTERVAL_MS ;
 int LWLockReleaseAll () ;
 scalar_t__ LogStandbySnapshot () ;
 int MemoryContextResetAndDeleteChildren (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int MyLatch ;
 TYPE_1__* MyProc ;
 int PGC_SIGHUP ;
 int PG_SETMASK (int *) ;
 int * PG_exception_stack ;
 int ProcessConfigFile (int ) ;
 int RESUME_INTERRUPTS () ;
 int RecoveryInProgress () ;
 int ReleaseAuxProcessResources (int) ;
 int ReqShutdownHandler ;
 int ResetLatch (int ) ;
 int SIGALRM ;
 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_DFL ;
 int SIG_IGN ;
 int StrategyNotifyBgWriter (int) ;
 scalar_t__ TimestampTzPlusMilliseconds (void*,int ) ;
 int TopMemoryContext ;
 int UnBlockSig ;
 int UnlockBuffers () ;
 int WAIT_EVENT_BGWRITER_HIBERNATE ;
 int WAIT_EVENT_BGWRITER_MAIN ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_TIMEOUT ;
 int WaitLatch (int ,int,int,int ) ;
 int WritebackContextInit (int *,int *) ;
 scalar_t__ XLogStandbyInfoActive () ;
 int bg_quickdie ;
 int bgwriter_flush_after ;
 int bgwriter_sigusr1_handler ;
 int * error_context_stack ;
 int got_SIGHUP ;
 scalar_t__ last_snapshot_lsn ;
 void* last_snapshot_ts ;
 int pg_usleep (long) ;
 int pgstat_report_wait_end () ;
 int pgstat_send_bgwriter () ;
 int pqsignal (int ,int ) ;
 int proc_exit (int ) ;
 scalar_t__ shutdown_requested ;
 int sigdelset (int *,int ) ;
 scalar_t__ sigsetjmp (int ,int) ;
 int smgrcloseall () ;

void
BackgroundWriterMain(void)
{
 sigjmp_buf local_sigjmp_buf;
 MemoryContext bgwriter_context;
 bool prev_hibernate;
 WritebackContext wb_context;







 pqsignal(SIGHUP, BgSigHupHandler);
 pqsignal(SIGINT, SIG_IGN);
 pqsignal(SIGTERM, ReqShutdownHandler);
 pqsignal(SIGQUIT, bg_quickdie);
 pqsignal(SIGALRM, SIG_IGN);
 pqsignal(SIGPIPE, SIG_IGN);
 pqsignal(SIGUSR1, bgwriter_sigusr1_handler);
 pqsignal(SIGUSR2, SIG_IGN);




 pqsignal(SIGCHLD, SIG_DFL);


 sigdelset(&BlockSig, SIGQUIT);





 last_snapshot_ts = GetCurrentTimestamp();







 bgwriter_context = AllocSetContextCreate(TopMemoryContext,
            "Background Writer",
            ALLOCSET_DEFAULT_SIZES);
 MemoryContextSwitchTo(bgwriter_context);

 WritebackContextInit(&wb_context, &bgwriter_flush_after);






 if (sigsetjmp(local_sigjmp_buf, 1) != 0)
 {

  error_context_stack = ((void*)0);


  HOLD_INTERRUPTS();


  EmitErrorReport();






  LWLockReleaseAll();
  ConditionVariableCancelSleep();
  AbortBufferIO();
  UnlockBuffers();
  ReleaseAuxProcessResources(0);
  AtEOXact_Buffers(0);
  AtEOXact_SMgr();
  AtEOXact_Files(0);
  AtEOXact_HashTables(0);





  MemoryContextSwitchTo(bgwriter_context);
  FlushErrorState();


  MemoryContextResetAndDeleteChildren(bgwriter_context);


  WritebackContextInit(&wb_context, &bgwriter_flush_after);


  RESUME_INTERRUPTS();






  pg_usleep(1000000L);






  smgrcloseall();


  pgstat_report_wait_end();
 }


 PG_exception_stack = &local_sigjmp_buf;




 PG_SETMASK(&UnBlockSig);




 prev_hibernate = 0;




 for (;;)
 {
  bool can_hibernate;
  int rc;


  ResetLatch(MyLatch);

  if (got_SIGHUP)
  {
   got_SIGHUP = 0;
   ProcessConfigFile(PGC_SIGHUP);
  }
  if (shutdown_requested)
  {




   ExitOnAnyError = 1;

   proc_exit(0);
  }




  can_hibernate = BgBufferSync(&wb_context);




  pgstat_send_bgwriter();

  if (FirstCallSinceLastCheckpoint())
  {




   smgrcloseall();
  }
  if (XLogStandbyInfoActive() && !RecoveryInProgress())
  {
   TimestampTz timeout = 0;
   TimestampTz now = GetCurrentTimestamp();

   timeout = TimestampTzPlusMilliseconds(last_snapshot_ts,
              LOG_SNAPSHOT_INTERVAL_MS);
   if (now >= timeout &&
    last_snapshot_lsn <= GetLastImportantRecPtr())
   {
    last_snapshot_lsn = LogStandbySnapshot();
    last_snapshot_ts = now;
   }
  }
  rc = WaitLatch(MyLatch,
        WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
        BgWriterDelay , WAIT_EVENT_BGWRITER_MAIN);
  if (rc == WL_TIMEOUT && can_hibernate && prev_hibernate)
  {

   StrategyNotifyBgWriter(MyProc->pgprocno);

   (void) WaitLatch(MyLatch,
        WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
        BgWriterDelay * HIBERNATE_FACTOR,
        WAIT_EVENT_BGWRITER_HIBERNATE);

   StrategyNotifyBgWriter(-1);
  }

  prev_hibernate = can_hibernate;
 }
}
