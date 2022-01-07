
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* TransactionState ;
struct TYPE_5__ {scalar_t__ state; int prevXactReadOnly; int nestingLevel; TYPE_1__* parent; int subTransactionId; int gucNestLevel; scalar_t__ curTransactionOwner; int fullTransactionId; scalar_t__ parallelModeLevel; int prevSecContext; int prevUser; } ;
struct TYPE_4__ {int subTransactionId; int curTransactionOwner; } ;


 int AbortBufferIO () ;
 int AfterTriggerEndSubXact (int) ;
 int AtEOSubXact_ApplyLauncher (int,int ) ;
 int AtEOSubXact_Files (int,int ,int ) ;
 int AtEOSubXact_HashTables (int,int ) ;
 int AtEOSubXact_Inval (int) ;
 int AtEOSubXact_LargeObject (int,int ,int ) ;
 int AtEOSubXact_Namespace (int,int ,int ) ;
 int AtEOSubXact_Parallel (int,int ) ;
 int AtEOSubXact_PgStat (int,int ) ;
 int AtEOSubXact_RelationCache (int,int ,int ) ;
 int AtEOSubXact_SPI (int,int ) ;
 int AtEOSubXact_on_commit_actions (int,int ,int ) ;
 int AtEOXact_GUC (int,int ) ;
 int AtSubAbort_Memory () ;
 int AtSubAbort_Notify () ;
 int AtSubAbort_Portals (int ,int ,scalar_t__,int ) ;
 int AtSubAbort_ResourceOwner () ;
 int AtSubAbort_Snapshot (int ) ;
 int AtSubAbort_childXids () ;
 int AtSubAbort_smgr () ;
 int CallSubXactCallbacks (int ,int ,int ) ;
 int ConditionVariableCancelSleep () ;
 TYPE_2__* CurrentTransactionState ;
 scalar_t__ FullTransactionIdIsValid (int ) ;
 int HOLD_INTERRUPTS () ;
 scalar_t__ IsInParallelMode () ;
 int LWLockReleaseAll () ;
 int LockErrorCleanup () ;
 int PG_SETMASK (int *) ;
 int RESOURCE_RELEASE_AFTER_LOCKS ;
 int RESOURCE_RELEASE_BEFORE_LOCKS ;
 int RESOURCE_RELEASE_LOCKS ;
 int RESUME_INTERRUPTS () ;
 int RecordTransactionAbort (int) ;
 int ResourceOwnerRelease (scalar_t__,int ,int,int) ;
 int SUBXACT_EVENT_ABORT_SUB ;
 int SetUserIdAndSecContext (int ,int ) ;
 int ShowTransactionState (char*) ;
 scalar_t__ TRANS_ABORT ;
 scalar_t__ TRANS_INPROGRESS ;
 int TransStateAsString (scalar_t__) ;
 int UnBlockSig ;
 int UnlockBuffers () ;
 int WARNING ;
 int XLogResetInsertion () ;
 int XactReadOnly ;
 int elog (int ,char*,int ) ;
 int pgstat_progress_end_command () ;
 int pgstat_report_wait_end () ;
 int reschedule_timeouts () ;

__attribute__((used)) static void
AbortSubTransaction(void)
{
 TransactionState s = CurrentTransactionState;


 HOLD_INTERRUPTS();


 AtSubAbort_Memory();
 AtSubAbort_ResourceOwner();
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




 ShowTransactionState("AbortSubTransaction");

 if (s->state != TRANS_INPROGRESS)
  elog(WARNING, "AbortSubTransaction while in %s state",
    TransStateAsString(s->state));

 s->state = TRANS_ABORT;





 SetUserIdAndSecContext(s->prevUser, s->prevSecContext);


 if (IsInParallelMode())
 {
  AtEOSubXact_Parallel(0, s->subTransactionId);
  s->parallelModeLevel = 0;
 }





 if (s->curTransactionOwner)
 {
  AfterTriggerEndSubXact(0);
  AtSubAbort_Portals(s->subTransactionId,
         s->parent->subTransactionId,
         s->curTransactionOwner,
         s->parent->curTransactionOwner);
  AtEOSubXact_LargeObject(0, s->subTransactionId,
        s->parent->subTransactionId);
  AtSubAbort_Notify();


  (void) RecordTransactionAbort(1);


  if (FullTransactionIdIsValid(s->fullTransactionId))
   AtSubAbort_childXids();

  CallSubXactCallbacks(SUBXACT_EVENT_ABORT_SUB, s->subTransactionId,
        s->parent->subTransactionId);

  ResourceOwnerRelease(s->curTransactionOwner,
        RESOURCE_RELEASE_BEFORE_LOCKS,
        0, 0);
  AtEOSubXact_RelationCache(0, s->subTransactionId,
          s->parent->subTransactionId);
  AtEOSubXact_Inval(0);
  ResourceOwnerRelease(s->curTransactionOwner,
        RESOURCE_RELEASE_LOCKS,
        0, 0);
  ResourceOwnerRelease(s->curTransactionOwner,
        RESOURCE_RELEASE_AFTER_LOCKS,
        0, 0);
  AtSubAbort_smgr();

  AtEOXact_GUC(0, s->gucNestLevel);
  AtEOSubXact_SPI(0, s->subTransactionId);
  AtEOSubXact_on_commit_actions(0, s->subTransactionId,
           s->parent->subTransactionId);
  AtEOSubXact_Namespace(0, s->subTransactionId,
         s->parent->subTransactionId);
  AtEOSubXact_Files(0, s->subTransactionId,
        s->parent->subTransactionId);
  AtEOSubXact_HashTables(0, s->nestingLevel);
  AtEOSubXact_PgStat(0, s->nestingLevel);
  AtSubAbort_Snapshot(s->nestingLevel);
  AtEOSubXact_ApplyLauncher(0, s->nestingLevel);
 }






 XactReadOnly = s->prevXactReadOnly;

 RESUME_INTERRUPTS();
}
