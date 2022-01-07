
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
typedef int TransactionId ;
struct TYPE_6__ {int lxid; } ;
struct TYPE_5__ {scalar_t__ blockState; scalar_t__ state; scalar_t__ parallelModeLevel; int prevSecContext; int prevUser; int * parent; } ;


 int AbortBufferIO () ;
 int AfterTriggerEndXact (int) ;
 int Assert (int ) ;
 int AtAbort_Memory () ;
 int AtAbort_Notify () ;
 int AtAbort_Portals () ;
 int AtAbort_ResourceOwner () ;
 int AtAbort_Twophase () ;
 int AtEOXact_ApplyLauncher (int) ;
 int AtEOXact_Buffers (int) ;
 int AtEOXact_ComboCid () ;
 int AtEOXact_Enum () ;
 int AtEOXact_Files (int) ;
 int AtEOXact_GUC (int,int) ;
 int AtEOXact_HashTables (int) ;
 int AtEOXact_Inval (int) ;
 int AtEOXact_LargeObject (int) ;
 int AtEOXact_MultiXact () ;
 int AtEOXact_Namespace (int,int) ;
 int AtEOXact_Parallel (int) ;
 int AtEOXact_PgStat (int,int) ;
 int AtEOXact_RelationCache (int) ;
 int AtEOXact_RelationMap (int,int) ;
 int AtEOXact_SMgr () ;
 int AtEOXact_SPI (int) ;
 int AtEOXact_on_commit_actions (int) ;
 int CallXactCallbacks (int ) ;
 int ConditionVariableCancelSleep () ;
 TYPE_1__* CurrentTransactionState ;
 int HOLD_INTERRUPTS () ;
 int InvalidTransactionId ;
 scalar_t__ IsInParallelMode () ;
 int LWLockReleaseAll () ;
 int LockErrorCleanup () ;
 TYPE_2__* MyProc ;
 int PG_SETMASK (int *) ;
 int ProcArrayEndTransaction (TYPE_2__*,int ) ;
 int RESOURCE_RELEASE_AFTER_LOCKS ;
 int RESOURCE_RELEASE_BEFORE_LOCKS ;
 int RESOURCE_RELEASE_LOCKS ;
 int RESUME_INTERRUPTS () ;
 int RecordTransactionAbort (int) ;
 int ResourceOwnerRelease (int *,int ,int,int) ;
 int SetUserIdAndSecContext (int ,int ) ;
 scalar_t__ TBLOCK_PARALLEL_INPROGRESS ;
 int TRACE_POSTGRESQL_TRANSACTION_ABORT (int ) ;
 scalar_t__ TRANS_ABORT ;
 scalar_t__ TRANS_INPROGRESS ;
 scalar_t__ TRANS_PREPARE ;
 int * TopTransactionResourceOwner ;
 int TransStateAsString (scalar_t__) ;
 int UnBlockSig ;
 int UnlockBuffers () ;
 int WARNING ;
 int XACT_EVENT_ABORT ;
 int XACT_EVENT_PARALLEL_ABORT ;
 int XLogResetInsertion () ;
 int XLogSetAsyncXactLSN (int ) ;
 int XactLastRecEnd ;
 int elog (int ,char*,int ) ;
 int pgstat_progress_end_command () ;
 int pgstat_report_wait_end () ;
 int pgstat_report_xact_timestamp (int ) ;
 int reschedule_timeouts () ;
 int smgrDoPendingDeletes (int) ;

__attribute__((used)) static void
AbortTransaction(void)
{
 TransactionState s = CurrentTransactionState;
 TransactionId latestXid;
 bool is_parallel_worker;


 HOLD_INTERRUPTS();


 AtAbort_Memory();
 AtAbort_ResourceOwner();







 LWLockReleaseAll();


 pgstat_report_wait_end();
 pgstat_progress_end_command();


 AbortBufferIO();
 UnlockBuffers();


 XLogResetInsertion();


 ConditionVariableCancelSleep();





 LockErrorCleanup();
 reschedule_timeouts();






 PG_SETMASK(&UnBlockSig);




 is_parallel_worker = (s->blockState == TBLOCK_PARALLEL_INPROGRESS);
 if (s->state != TRANS_INPROGRESS && s->state != TRANS_PREPARE)
  elog(WARNING, "AbortTransaction while in %s state",
    TransStateAsString(s->state));
 Assert(s->parent == ((void*)0));





 s->state = TRANS_ABORT;
 SetUserIdAndSecContext(s->prevUser, s->prevSecContext);


 if (IsInParallelMode())
 {
  AtEOXact_Parallel(0);
  s->parallelModeLevel = 0;
 }




 AfterTriggerEndXact(0);
 AtAbort_Portals();
 AtEOXact_LargeObject(0);
 AtAbort_Notify();
 AtEOXact_RelationMap(0, is_parallel_worker);
 AtAbort_Twophase();







 if (!is_parallel_worker)
  latestXid = RecordTransactionAbort(0);
 else
 {
  latestXid = InvalidTransactionId;






  XLogSetAsyncXactLSN(XactLastRecEnd);
 }

 TRACE_POSTGRESQL_TRANSACTION_ABORT(MyProc->lxid);






 ProcArrayEndTransaction(MyProc, latestXid);






 if (TopTransactionResourceOwner != ((void*)0))
 {
  if (is_parallel_worker)
   CallXactCallbacks(XACT_EVENT_PARALLEL_ABORT);
  else
   CallXactCallbacks(XACT_EVENT_ABORT);

  ResourceOwnerRelease(TopTransactionResourceOwner,
        RESOURCE_RELEASE_BEFORE_LOCKS,
        0, 1);
  AtEOXact_Buffers(0);
  AtEOXact_RelationCache(0);
  AtEOXact_Inval(0);
  AtEOXact_MultiXact();
  ResourceOwnerRelease(TopTransactionResourceOwner,
        RESOURCE_RELEASE_LOCKS,
        0, 1);
  ResourceOwnerRelease(TopTransactionResourceOwner,
        RESOURCE_RELEASE_AFTER_LOCKS,
        0, 1);
  smgrDoPendingDeletes(0);

  AtEOXact_GUC(0, 1);
  AtEOXact_SPI(0);
  AtEOXact_Enum();
  AtEOXact_on_commit_actions(0);
  AtEOXact_Namespace(0, is_parallel_worker);
  AtEOXact_SMgr();
  AtEOXact_Files(0);
  AtEOXact_ComboCid();
  AtEOXact_HashTables(0);
  AtEOXact_PgStat(0, is_parallel_worker);
  AtEOXact_ApplyLauncher(0);
  pgstat_report_xact_timestamp(0);
 }




 RESUME_INTERRUPTS();
}
