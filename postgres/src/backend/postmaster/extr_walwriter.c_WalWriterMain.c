
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sigjmp_buf ;
struct TYPE_4__ {int procLatch; } ;
struct TYPE_3__ {int * walwriterLatch; } ;
typedef int MemoryContext ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AbortBufferIO () ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int AtEOXact_Buffers (int) ;
 int AtEOXact_Files (int) ;
 int AtEOXact_HashTables (int) ;
 int AtEOXact_SMgr () ;
 int BlockSig ;
 int ConditionVariableCancelSleep () ;
 int EmitErrorReport () ;
 int FlushErrorState () ;
 long HIBERNATE_FACTOR ;
 int HOLD_INTERRUPTS () ;
 int LOOPS_UNTIL_HIBERNATE ;
 int LWLockReleaseAll () ;
 int MemoryContextResetAndDeleteChildren (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int MyLatch ;
 TYPE_2__* MyProc ;
 int PGC_SIGHUP ;
 int PG_SETMASK (int *) ;
 int * PG_exception_stack ;
 TYPE_1__* ProcGlobal ;
 int ProcessConfigFile (int ) ;
 int RESUME_INTERRUPTS () ;
 int ReleaseAuxProcessResources (int) ;
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
 int SetWalWriterSleeping (int) ;
 int TopMemoryContext ;
 int UnBlockSig ;
 int UnlockBuffers () ;
 int WAIT_EVENT_WAL_WRITER_MAIN ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_TIMEOUT ;
 int WaitLatch (int ,int,long,int ) ;
 int WalShutdownHandler ;
 int WalSigHupHandler ;
 long WalWriterDelay ;
 scalar_t__ XLogBackgroundFlush () ;
 int * error_context_stack ;
 int got_SIGHUP ;
 int pg_usleep (long) ;
 int pgstat_report_wait_end () ;
 int pqsignal (int ,int ) ;
 int proc_exit (int ) ;
 scalar_t__ shutdown_requested ;
 int sigdelset (int *,int ) ;
 scalar_t__ sigsetjmp (int ,int) ;
 int smgrcloseall () ;
 int wal_quickdie ;
 int walwriter_sigusr1_handler ;

void
WalWriterMain(void)
{
 sigjmp_buf local_sigjmp_buf;
 MemoryContext walwriter_context;
 int left_till_hibernate;
 bool hibernating;







 pqsignal(SIGHUP, WalSigHupHandler);
 pqsignal(SIGINT, WalShutdownHandler);
 pqsignal(SIGTERM, WalShutdownHandler);
 pqsignal(SIGQUIT, wal_quickdie);
 pqsignal(SIGALRM, SIG_IGN);
 pqsignal(SIGPIPE, SIG_IGN);
 pqsignal(SIGUSR1, walwriter_sigusr1_handler);
 pqsignal(SIGUSR2, SIG_IGN);




 pqsignal(SIGCHLD, SIG_DFL);


 sigdelset(&BlockSig, SIGQUIT);







 walwriter_context = AllocSetContextCreate(TopMemoryContext,
             "Wal Writer",
             ALLOCSET_DEFAULT_SIZES);
 MemoryContextSwitchTo(walwriter_context);






 if (sigsetjmp(local_sigjmp_buf, 1) != 0)
 {

  error_context_stack = ((void*)0);


  HOLD_INTERRUPTS();


  EmitErrorReport();






  LWLockReleaseAll();
  ConditionVariableCancelSleep();
  pgstat_report_wait_end();
  AbortBufferIO();
  UnlockBuffers();
  ReleaseAuxProcessResources(0);
  AtEOXact_Buffers(0);
  AtEOXact_SMgr();
  AtEOXact_Files(0);
  AtEOXact_HashTables(0);





  MemoryContextSwitchTo(walwriter_context);
  FlushErrorState();


  MemoryContextResetAndDeleteChildren(walwriter_context);


  RESUME_INTERRUPTS();






  pg_usleep(1000000L);






  smgrcloseall();
 }


 PG_exception_stack = &local_sigjmp_buf;




 PG_SETMASK(&UnBlockSig);




 left_till_hibernate = LOOPS_UNTIL_HIBERNATE;
 hibernating = 0;
 SetWalWriterSleeping(0);





 ProcGlobal->walwriterLatch = &MyProc->procLatch;




 for (;;)
 {
  long cur_timeout;
  if (hibernating != (left_till_hibernate <= 1))
  {
   hibernating = (left_till_hibernate <= 1);
   SetWalWriterSleeping(hibernating);
  }


  ResetLatch(MyLatch);




  if (got_SIGHUP)
  {
   got_SIGHUP = 0;
   ProcessConfigFile(PGC_SIGHUP);
  }
  if (shutdown_requested)
  {

   proc_exit(0);
  }





  if (XLogBackgroundFlush())
   left_till_hibernate = LOOPS_UNTIL_HIBERNATE;
  else if (left_till_hibernate > 0)
   left_till_hibernate--;






  if (left_till_hibernate > 0)
   cur_timeout = WalWriterDelay;
  else
   cur_timeout = WalWriterDelay * HIBERNATE_FACTOR;

  (void) WaitLatch(MyLatch,
       WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
       cur_timeout,
       WAIT_EVENT_WAL_WRITER_MAIN);
 }
}
