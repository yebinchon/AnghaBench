
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ckpt_failed; int ckpt_started; int ckpt_flags; scalar_t__ checkpointer_pid; int ckpt_done; int done_cv; int ckpt_lck; int start_cv; } ;


 int CHECKPOINT_IMMEDIATE ;
 int CHECKPOINT_REQUESTED ;
 int CHECKPOINT_WAIT ;
 int CHECK_FOR_INTERRUPTS () ;
 TYPE_1__* CheckpointerShmem ;
 int ConditionVariableCancelSleep () ;
 int ConditionVariablePrepareToSleep (int *) ;
 int ConditionVariableSleep (int *,int ) ;
 int CreateCheckPoint (int) ;
 int ERROR ;
 int IsPostmasterEnvironment ;
 int LOG ;
 int MAX_SIGNAL_TRIES ;
 int SIGINT ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WAIT_EVENT_CHECKPOINT_DONE ;
 int WAIT_EVENT_CHECKPOINT_START ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 scalar_t__ kill (scalar_t__,int ) ;
 int pg_usleep (long) ;
 int smgrcloseall () ;

void
RequestCheckpoint(int flags)
{
 int ntries;
 int old_failed,
    old_started;




 if (!IsPostmasterEnvironment)
 {




  CreateCheckPoint(flags | CHECKPOINT_IMMEDIATE);





  smgrcloseall();

  return;
 }
 SpinLockAcquire(&CheckpointerShmem->ckpt_lck);

 old_failed = CheckpointerShmem->ckpt_failed;
 old_started = CheckpointerShmem->ckpt_started;
 CheckpointerShmem->ckpt_flags |= (flags | CHECKPOINT_REQUESTED);

 SpinLockRelease(&CheckpointerShmem->ckpt_lck);
 for (ntries = 0;; ntries++)
 {
  if (CheckpointerShmem->checkpointer_pid == 0)
  {
   if (ntries >= 600 || !(flags & CHECKPOINT_WAIT))
   {
    elog((flags & CHECKPOINT_WAIT) ? ERROR : LOG,
      "could not signal for checkpoint: checkpointer is not running");
    break;
   }
  }
  else if (kill(CheckpointerShmem->checkpointer_pid, SIGINT) != 0)
  {
   if (ntries >= 600 || !(flags & CHECKPOINT_WAIT))
   {
    elog((flags & CHECKPOINT_WAIT) ? ERROR : LOG,
      "could not signal for checkpoint: %m");
    break;
   }
  }
  else
   break;

  CHECK_FOR_INTERRUPTS();
  pg_usleep(100000L);
 }





 if (flags & CHECKPOINT_WAIT)
 {
  int new_started,
     new_failed;


  ConditionVariablePrepareToSleep(&CheckpointerShmem->start_cv);
  for (;;)
  {
   SpinLockAcquire(&CheckpointerShmem->ckpt_lck);
   new_started = CheckpointerShmem->ckpt_started;
   SpinLockRelease(&CheckpointerShmem->ckpt_lck);

   if (new_started != old_started)
    break;

   ConditionVariableSleep(&CheckpointerShmem->start_cv,
           WAIT_EVENT_CHECKPOINT_START);
  }
  ConditionVariableCancelSleep();




  ConditionVariablePrepareToSleep(&CheckpointerShmem->done_cv);
  for (;;)
  {
   int new_done;

   SpinLockAcquire(&CheckpointerShmem->ckpt_lck);
   new_done = CheckpointerShmem->ckpt_done;
   new_failed = CheckpointerShmem->ckpt_failed;
   SpinLockRelease(&CheckpointerShmem->ckpt_lck);

   if (new_done - new_started >= 0)
    break;

   ConditionVariableSleep(&CheckpointerShmem->done_cv,
           WAIT_EVENT_CHECKPOINT_DONE);
  }
  ConditionVariableCancelSleep();

  if (new_failed != old_failed)
   ereport(ERROR,
     (errmsg("checkpoint request failed"),
      errhint("Consult recent messages in the server log for details.")));
 }
}
