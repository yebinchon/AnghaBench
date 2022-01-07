
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int TimestampTz ;
struct TYPE_4__ {int procLatch; } ;
struct TYPE_3__ {scalar_t__ bgworker_pid; int lock; } ;
typedef int Datum ;


 int BackgroundWorkerUnblockSignals () ;
 int GetCurrentTimestamp () ;
 scalar_t__ InvalidPid ;
 int LOG ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 TYPE_2__* MyProc ;
 scalar_t__ MyProcPid ;
 int PGC_SIGHUP ;
 int PG_WAIT_EXTENSION ;
 int ProcessConfigFile (int ) ;
 int ResetLatch (int *) ;
 int SIGHUP ;
 int SIGTERM ;
 int SIGUSR1 ;
 int TimestampDifference (int ,int ,long*,int*) ;
 int TimestampTzPlusMilliseconds (int ,int) ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_TIMEOUT ;
 int WaitLatch (int *,int,long,int ) ;
 int apw_detach_shmem ;
 int apw_dump_now (int,int) ;
 scalar_t__ apw_init_shmem () ;
 int apw_load_buffers () ;
 int apw_sighup_handler ;
 int apw_sigterm_handler ;
 TYPE_1__* apw_state ;
 int autoprewarm_interval ;
 int ereport (int ,int ) ;
 int errmsg (char*,unsigned long) ;
 int got_sighup ;
 int got_sigterm ;
 int on_shmem_exit (int ,int ) ;
 int pqsignal (int ,int ) ;
 int procsignal_sigusr1_handler ;

void
autoprewarm_main(Datum main_arg)
{
 bool first_time = 1;
 TimestampTz last_dump_time = 0;


 pqsignal(SIGTERM, apw_sigterm_handler);
 pqsignal(SIGHUP, apw_sighup_handler);
 pqsignal(SIGUSR1, procsignal_sigusr1_handler);
 BackgroundWorkerUnblockSignals();


 if (apw_init_shmem())
  first_time = 0;


 on_shmem_exit(apw_detach_shmem, 0);





 LWLockAcquire(&apw_state->lock, LW_EXCLUSIVE);
 if (apw_state->bgworker_pid != InvalidPid)
 {
  LWLockRelease(&apw_state->lock);
  ereport(LOG,
    (errmsg("autoprewarm worker is already running under PID %lu",
      (unsigned long) apw_state->bgworker_pid)));
  return;
 }
 apw_state->bgworker_pid = MyProcPid;
 LWLockRelease(&apw_state->lock);
 if (first_time)
 {
  apw_load_buffers();
  last_dump_time = GetCurrentTimestamp();
 }


 while (!got_sigterm)
 {

  if (got_sighup)
  {
   got_sighup = 0;
   ProcessConfigFile(PGC_SIGHUP);
  }

  if (autoprewarm_interval <= 0)
  {

   (void) WaitLatch(&MyProc->procLatch,
        WL_LATCH_SET | WL_EXIT_ON_PM_DEATH,
        -1L,
        PG_WAIT_EXTENSION);
  }
  else
  {
   long delay_in_ms = 0;
   TimestampTz next_dump_time = 0;
   long secs = 0;
   int usecs = 0;


   next_dump_time =
    TimestampTzPlusMilliseconds(last_dump_time,
           autoprewarm_interval * 1000);
   TimestampDifference(GetCurrentTimestamp(), next_dump_time,
        &secs, &usecs);
   delay_in_ms = secs + (usecs / 1000);


   if (delay_in_ms <= 0)
   {
    last_dump_time = GetCurrentTimestamp();
    apw_dump_now(1, 0);
    continue;
   }


   (void) WaitLatch(&MyProc->procLatch,
        WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
        delay_in_ms,
        PG_WAIT_EXTENSION);
  }


  ResetLatch(&MyProc->procLatch);
 }





 apw_dump_now(1, 1);
}
