
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
typedef int TransactionId ;
struct TYPE_6__ {int lxid; } ;
struct TYPE_5__ {scalar_t__ blockState; scalar_t__ state; scalar_t__ maxChildXids; scalar_t__ nChildXids; int * childXids; scalar_t__ gucNestLevel; scalar_t__ nestingLevel; int subTransactionId; void* fullTransactionId; int * curTransactionOwner; scalar_t__ parallelModeLevel; int * parent; } ;


 int AfterTriggerEndXact (int) ;
 int AfterTriggerFireDeferred () ;
 int Assert (int ) ;
 int AtCommit_Memory () ;
 int AtCommit_Notify () ;
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
 int AtEOXact_Snapshot (int,int) ;
 int AtEOXact_on_commit_actions (int) ;
 int CallXactCallbacks (int ) ;
 int * CurTransactionResourceOwner ;
 int * CurrentResourceOwner ;
 TYPE_1__* CurrentTransactionState ;
 int EnterParallelMode () ;
 int HOLD_INTERRUPTS () ;
 void* InvalidFullTransactionId ;
 int InvalidSubTransactionId ;
 int InvalidTransactionId ;
 scalar_t__ IsInParallelMode () ;
 TYPE_2__* MyProc ;
 int ParallelWorkerReportLastRecEnd (int ) ;
 int PreCommit_CheckForSerializationFailure () ;
 int PreCommit_Notify () ;
 int PreCommit_Portals (int) ;
 int PreCommit_on_commit_actions () ;
 int ProcArrayEndTransaction (TYPE_2__*,int ) ;
 int RESOURCE_RELEASE_AFTER_LOCKS ;
 int RESOURCE_RELEASE_BEFORE_LOCKS ;
 int RESOURCE_RELEASE_LOCKS ;
 int RESUME_INTERRUPTS () ;
 int RecordTransactionCommit () ;
 int ResourceOwnerDelete (int *) ;
 int ResourceOwnerRelease (int *,int ,int,int) ;
 int ShowTransactionState (char*) ;
 scalar_t__ TBLOCK_PARALLEL_INPROGRESS ;
 int TRACE_POSTGRESQL_TRANSACTION_COMMIT (int ) ;
 scalar_t__ TRANS_COMMIT ;
 scalar_t__ TRANS_DEFAULT ;
 scalar_t__ TRANS_INPROGRESS ;
 int * TopTransactionResourceOwner ;
 int TransStateAsString (scalar_t__) ;
 int WARNING ;
 int XACT_EVENT_COMMIT ;
 int XACT_EVENT_PARALLEL_COMMIT ;
 int XACT_EVENT_PARALLEL_PRE_COMMIT ;
 int XACT_EVENT_PRE_COMMIT ;
 int XactLastRecEnd ;
 void* XactTopFullTransactionId ;
 int elog (int ,char*,int ) ;
 scalar_t__ nParallelCurrentXids ;
 int pgstat_report_xact_timestamp (int ) ;
 int smgrDoPendingDeletes (int) ;

__attribute__((used)) static void
CommitTransaction(void)
{
 TransactionState s = CurrentTransactionState;
 TransactionId latestXid;
 bool is_parallel_worker;

 is_parallel_worker = (s->blockState == TBLOCK_PARALLEL_INPROGRESS);


 if (is_parallel_worker)
  EnterParallelMode();

 ShowTransactionState("CommitTransaction");




 if (s->state != TRANS_INPROGRESS)
  elog(WARNING, "CommitTransaction while in %s state",
    TransStateAsString(s->state));
 Assert(s->parent == ((void*)0));







 for (;;)
 {



  AfterTriggerFireDeferred();






  if (!PreCommit_Portals(0))
   break;
 }

 CallXactCallbacks(is_parallel_worker ? XACT_EVENT_PARALLEL_PRE_COMMIT
       : XACT_EVENT_PRE_COMMIT);
 if (IsInParallelMode())
  AtEOXact_Parallel(1);


 AfterTriggerEndXact(1);





 PreCommit_on_commit_actions();


 AtEOXact_LargeObject(1);
 if (!is_parallel_worker)
  PreCommit_CheckForSerializationFailure();






 PreCommit_Notify();


 HOLD_INTERRUPTS();


 AtEOXact_RelationMap(1, is_parallel_worker);





 s->state = TRANS_COMMIT;
 s->parallelModeLevel = 0;

 if (!is_parallel_worker)
 {




  latestXid = RecordTransactionCommit();
 }
 else
 {




  latestXid = InvalidTransactionId;





  ParallelWorkerReportLastRecEnd(XactLastRecEnd);
 }

 TRACE_POSTGRESQL_TRANSACTION_COMMIT(MyProc->lxid);






 ProcArrayEndTransaction(MyProc, latestXid);
 CallXactCallbacks(is_parallel_worker ? XACT_EVENT_PARALLEL_COMMIT
       : XACT_EVENT_COMMIT);

 ResourceOwnerRelease(TopTransactionResourceOwner,
       RESOURCE_RELEASE_BEFORE_LOCKS,
       1, 1);


 AtEOXact_Buffers(1);


 AtEOXact_RelationCache(1);
 AtEOXact_Inval(1);

 AtEOXact_MultiXact();

 ResourceOwnerRelease(TopTransactionResourceOwner,
       RESOURCE_RELEASE_LOCKS,
       1, 1);
 ResourceOwnerRelease(TopTransactionResourceOwner,
       RESOURCE_RELEASE_AFTER_LOCKS,
       1, 1);
 smgrDoPendingDeletes(1);

 AtCommit_Notify();
 AtEOXact_GUC(1, 1);
 AtEOXact_SPI(1);
 AtEOXact_Enum();
 AtEOXact_on_commit_actions(1);
 AtEOXact_Namespace(1, is_parallel_worker);
 AtEOXact_SMgr();
 AtEOXact_Files(1);
 AtEOXact_ComboCid();
 AtEOXact_HashTables(1);
 AtEOXact_PgStat(1, is_parallel_worker);
 AtEOXact_Snapshot(1, 0);
 AtEOXact_ApplyLauncher(1);
 pgstat_report_xact_timestamp(0);

 CurrentResourceOwner = ((void*)0);
 ResourceOwnerDelete(TopTransactionResourceOwner);
 s->curTransactionOwner = ((void*)0);
 CurTransactionResourceOwner = ((void*)0);
 TopTransactionResourceOwner = ((void*)0);

 AtCommit_Memory();

 s->fullTransactionId = InvalidFullTransactionId;
 s->subTransactionId = InvalidSubTransactionId;
 s->nestingLevel = 0;
 s->gucNestLevel = 0;
 s->childXids = ((void*)0);
 s->nChildXids = 0;
 s->maxChildXids = 0;

 XactTopFullTransactionId = InvalidFullTransactionId;
 nParallelCurrentXids = 0;





 s->state = TRANS_DEFAULT;

 RESUME_INTERRUPTS();
}
