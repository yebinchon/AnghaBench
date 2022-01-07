
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sigjmp_buf ;
typedef int pg_time_t ;
struct TYPE_10__ {int m_timed_checkpoints; int m_requested_checkpoints; } ;
struct TYPE_9__ {int ckpt_flags; int done_cv; int ckpt_lck; scalar_t__ ckpt_started; scalar_t__ ckpt_done; int start_cv; int ckpt_failed; int checkpointer_pid; } ;
struct TYPE_8__ {int procLatch; } ;
struct TYPE_7__ {int * checkpointerLatch; } ;
struct TYPE_6__ {scalar_t__ ckpt_flags; } ;
typedef int MemoryContext ;
typedef TYPE_1__ CheckpointerShmemStruct ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AbortBufferIO () ;
 int AbsorbSyncRequests () ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int AtEOXact_Buffers (int) ;
 int AtEOXact_Files (int) ;
 int AtEOXact_HashTables (int) ;
 int AtEOXact_SMgr () ;
 TYPE_5__ BgWriterStats ;
 int BlockSig ;
 int CHECKPOINT_CAUSE_TIME ;
 int CHECKPOINT_CAUSE_XLOG ;
 int CHECKPOINT_END_OF_RECOVERY ;
 int CheckArchiveTimeout () ;
 int CheckPointTimeout ;
 int CheckPointWarning ;
 TYPE_4__* CheckpointerShmem ;
 int ChkptSigHupHandler ;
 int ConditionVariableBroadcast (int *) ;
 int ConditionVariableCancelSleep () ;
 int CreateCheckPoint (int) ;
 int CreateRestartPoint (int) ;
 int EmitErrorReport () ;
 int ExitOnAnyError ;
 int FlushErrorState () ;
 int GetInsertRecPtr () ;
 int GetXLogReplayRecPtr (int *) ;
 int HOLD_INTERRUPTS () ;
 int LOG ;
 int LWLockReleaseAll () ;
 int MemoryContextResetAndDeleteChildren (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int Min (int,int) ;
 int MyLatch ;
 TYPE_3__* MyProc ;
 int MyProcPid ;
 int PGC_SIGHUP ;
 int PG_SETMASK (int *) ;
 int * PG_exception_stack ;
 TYPE_2__* ProcGlobal ;
 int ProcessConfigFile (int ) ;
 int RESUME_INTERRUPTS () ;
 int RecoveryInProgress () ;
 int ReleaseAuxProcessResources (int) ;
 int ReqCheckpointHandler ;
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
 int ShutdownXLOG (int ,int ) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int TopMemoryContext ;
 int UnBlockSig ;
 int UnlockBuffers () ;
 int UpdateSharedMemoryConfig () ;
 int WAIT_EVENT_CHECKPOINTER_MAIN ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_TIMEOUT ;
 int WaitLatch (int ,int,int,int ) ;
 int XLogArchiveTimeout ;
 int chkpt_quickdie ;
 int chkpt_sigusr1_handler ;
 int ckpt_active ;
 scalar_t__ ckpt_cached_elapsed ;
 int ckpt_start_recptr ;
 int ckpt_start_time ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg_plural (char*,char*,int,int) ;
 int * error_context_stack ;
 int got_SIGHUP ;
 int last_checkpoint_time ;
 int last_xlog_switch_time ;
 int pg_usleep (long) ;
 int pgstat_report_wait_end () ;
 int pgstat_send_bgwriter () ;
 int pqsignal (int ,int ) ;
 int proc_exit (int ) ;
 scalar_t__ shutdown_requested ;
 int sigdelset (int *,int ) ;
 scalar_t__ sigsetjmp (int ,int) ;
 int smgrcloseall () ;
 scalar_t__ time (int *) ;

void
CheckpointerMain(void)
{
 sigjmp_buf local_sigjmp_buf;
 MemoryContext checkpointer_context;

 CheckpointerShmem->checkpointer_pid = MyProcPid;
 pqsignal(SIGHUP, ChkptSigHupHandler);
 pqsignal(SIGINT, ReqCheckpointHandler);
 pqsignal(SIGTERM, SIG_IGN);
 pqsignal(SIGQUIT, chkpt_quickdie);
 pqsignal(SIGALRM, SIG_IGN);
 pqsignal(SIGPIPE, SIG_IGN);
 pqsignal(SIGUSR1, chkpt_sigusr1_handler);
 pqsignal(SIGUSR2, ReqShutdownHandler);




 pqsignal(SIGCHLD, SIG_DFL);


 sigdelset(&BlockSig, SIGQUIT);




 last_checkpoint_time = last_xlog_switch_time = (pg_time_t) time(((void*)0));







 checkpointer_context = AllocSetContextCreate(TopMemoryContext,
             "Checkpointer",
             ALLOCSET_DEFAULT_SIZES);
 MemoryContextSwitchTo(checkpointer_context);






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


  if (ckpt_active)
  {
   SpinLockAcquire(&CheckpointerShmem->ckpt_lck);
   CheckpointerShmem->ckpt_failed++;
   CheckpointerShmem->ckpt_done = CheckpointerShmem->ckpt_started;
   SpinLockRelease(&CheckpointerShmem->ckpt_lck);

   ConditionVariableBroadcast(&CheckpointerShmem->done_cv);

   ckpt_active = 0;
  }





  MemoryContextSwitchTo(checkpointer_context);
  FlushErrorState();


  MemoryContextResetAndDeleteChildren(checkpointer_context);


  RESUME_INTERRUPTS();






  pg_usleep(1000000L);






  smgrcloseall();
 }


 PG_exception_stack = &local_sigjmp_buf;




 PG_SETMASK(&UnBlockSig);





 UpdateSharedMemoryConfig();





 ProcGlobal->checkpointerLatch = &MyProc->procLatch;




 for (;;)
 {
  bool do_checkpoint = 0;
  int flags = 0;
  pg_time_t now;
  int elapsed_secs;
  int cur_timeout;


  ResetLatch(MyLatch);




  AbsorbSyncRequests();

  if (got_SIGHUP)
  {
   got_SIGHUP = 0;
   ProcessConfigFile(PGC_SIGHUP);
   UpdateSharedMemoryConfig();
  }
  if (shutdown_requested)
  {




   ExitOnAnyError = 1;

   ShutdownXLOG(0, 0);

   proc_exit(0);
  }






  if (((volatile CheckpointerShmemStruct *) CheckpointerShmem)->ckpt_flags)
  {
   do_checkpoint = 1;
   BgWriterStats.m_requested_checkpoints++;
  }







  now = (pg_time_t) time(((void*)0));
  elapsed_secs = now - last_checkpoint_time;
  if (elapsed_secs >= CheckPointTimeout)
  {
   if (!do_checkpoint)
    BgWriterStats.m_timed_checkpoints++;
   do_checkpoint = 1;
   flags |= CHECKPOINT_CAUSE_TIME;
  }




  if (do_checkpoint)
  {
   bool ckpt_performed = 0;
   bool do_restartpoint;






   do_restartpoint = RecoveryInProgress();






   SpinLockAcquire(&CheckpointerShmem->ckpt_lck);
   flags |= CheckpointerShmem->ckpt_flags;
   CheckpointerShmem->ckpt_flags = 0;
   CheckpointerShmem->ckpt_started++;
   SpinLockRelease(&CheckpointerShmem->ckpt_lck);

   ConditionVariableBroadcast(&CheckpointerShmem->start_cv);





   if (flags & CHECKPOINT_END_OF_RECOVERY)
    do_restartpoint = 0;
   if (!do_restartpoint &&
    (flags & CHECKPOINT_CAUSE_XLOG) &&
    elapsed_secs < CheckPointWarning)
    ereport(LOG,
      (errmsg_plural("checkpoints are occurring too frequently (%d second apart)",
            "checkpoints are occurring too frequently (%d seconds apart)",
            elapsed_secs,
            elapsed_secs),
       errhint("Consider increasing the configuration parameter \"max_wal_size\".")));





   ckpt_active = 1;
   if (do_restartpoint)
    ckpt_start_recptr = GetXLogReplayRecPtr(((void*)0));
   else
    ckpt_start_recptr = GetInsertRecPtr();
   ckpt_start_time = now;
   ckpt_cached_elapsed = 0;




   if (!do_restartpoint)
   {
    CreateCheckPoint(flags);
    ckpt_performed = 1;
   }
   else
    ckpt_performed = CreateRestartPoint(flags);





   smgrcloseall();




   SpinLockAcquire(&CheckpointerShmem->ckpt_lck);
   CheckpointerShmem->ckpt_done = CheckpointerShmem->ckpt_started;
   SpinLockRelease(&CheckpointerShmem->ckpt_lck);

   ConditionVariableBroadcast(&CheckpointerShmem->done_cv);

   if (ckpt_performed)
   {





    last_checkpoint_time = now;
   }
   else
   {






    last_checkpoint_time = now - CheckPointTimeout + 15;
   }

   ckpt_active = 0;
  }


  CheckArchiveTimeout();
  pgstat_send_bgwriter();





  now = (pg_time_t) time(((void*)0));
  elapsed_secs = now - last_checkpoint_time;
  if (elapsed_secs >= CheckPointTimeout)
   continue;
  cur_timeout = CheckPointTimeout - elapsed_secs;
  if (XLogArchiveTimeout > 0 && !RecoveryInProgress())
  {
   elapsed_secs = now - last_xlog_switch_time;
   if (elapsed_secs >= XLogArchiveTimeout)
    continue;
   cur_timeout = Min(cur_timeout, XLogArchiveTimeout - elapsed_secs);
  }

  (void) WaitLatch(MyLatch,
       WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
       cur_timeout * 1000L ,
       WAIT_EVENT_CHECKPOINTER_MAIN);
 }
}
