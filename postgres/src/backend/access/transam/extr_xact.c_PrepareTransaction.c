
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* TransactionState ;
typedef int TransactionId ;
typedef int TimestampTz ;
struct TYPE_3__ {scalar_t__ state; scalar_t__ maxChildXids; scalar_t__ nChildXids; int * childXids; scalar_t__ gucNestLevel; scalar_t__ nestingLevel; int subTransactionId; void* fullTransactionId; int * curTransactionOwner; int * parent; } ;
typedef int GlobalTransaction ;


 int AfterTriggerEndXact (int) ;
 int AfterTriggerFireDeferred () ;
 int Assert (int) ;
 int AtCommit_Memory () ;
 int AtEOXact_Buffers (int) ;
 int AtEOXact_ComboCid () ;
 int AtEOXact_Enum () ;
 int AtEOXact_Files (int) ;
 int AtEOXact_GUC (int,int) ;
 int AtEOXact_HashTables (int) ;
 int AtEOXact_LargeObject (int) ;
 int AtEOXact_Namespace (int,int) ;
 int AtEOXact_RelationCache (int) ;
 int AtEOXact_SMgr () ;
 int AtEOXact_SPI (int) ;
 int AtEOXact_Snapshot (int,int) ;
 int AtEOXact_on_commit_actions (int) ;
 int AtPrepare_Locks () ;
 int AtPrepare_MultiXact () ;
 int AtPrepare_Notify () ;
 int AtPrepare_PgStat () ;
 int AtPrepare_PredicateLocks () ;
 int AtPrepare_RelationMap () ;
 int BufmgrCommit () ;
 int CallXactCallbacks (int ) ;
 int * CurTransactionResourceOwner ;
 int * CurrentResourceOwner ;
 TYPE_1__* CurrentTransactionState ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int EndPrepare (int ) ;
 int GetCurrentTimestamp () ;
 int GetCurrentTransactionId () ;
 int GetUserId () ;
 int HOLD_INTERRUPTS () ;
 void* InvalidFullTransactionId ;
 int InvalidSubTransactionId ;
 int IsInParallelMode () ;
 int MarkAsPreparing (int ,int *,int ,int ,int ) ;
 int MyDatabaseId ;
 int MyProc ;
 int MyXactFlags ;
 int PostPrepare_Inval () ;
 int PostPrepare_Locks (int ) ;
 int PostPrepare_MultiXact (int ) ;
 int PostPrepare_PgStat () ;
 int PostPrepare_PredicateLocks (int ) ;
 int PostPrepare_Twophase () ;
 int PostPrepare_smgr () ;
 int PreCommit_CheckForSerializationFailure () ;
 int PreCommit_Portals (int) ;
 int PreCommit_on_commit_actions () ;
 int ProcArrayClearTransaction (int ) ;
 int RESOURCE_RELEASE_AFTER_LOCKS ;
 int RESOURCE_RELEASE_BEFORE_LOCKS ;
 int RESOURCE_RELEASE_LOCKS ;
 int RESUME_INTERRUPTS () ;
 int ResourceOwnerDelete (int *) ;
 int ResourceOwnerRelease (int *,int ,int,int) ;
 int ShowTransactionState (char*) ;
 int StartPrepare (int ) ;
 scalar_t__ TRANS_DEFAULT ;
 scalar_t__ TRANS_INPROGRESS ;
 scalar_t__ TRANS_PREPARE ;
 int * TopTransactionResourceOwner ;
 int TransStateAsString (scalar_t__) ;
 int WARNING ;
 int XACT_EVENT_PREPARE ;
 int XACT_EVENT_PRE_PREPARE ;
 int XACT_FLAGS_ACCESSEDTEMPNAMESPACE ;
 scalar_t__ XactHasExportedSnapshots () ;
 scalar_t__ XactLastRecEnd ;
 scalar_t__ XactManipulatesLogicalReplicationWorkers () ;
 void* XactTopFullTransactionId ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ nParallelCurrentXids ;
 int pgstat_report_xact_timestamp (int ) ;
 int * prepareGID ;

__attribute__((used)) static void
PrepareTransaction(void)
{
 TransactionState s = CurrentTransactionState;
 TransactionId xid = GetCurrentTransactionId();
 GlobalTransaction gxact;
 TimestampTz prepared_at;

 Assert(!IsInParallelMode());

 ShowTransactionState("PrepareTransaction");




 if (s->state != TRANS_INPROGRESS)
  elog(WARNING, "PrepareTransaction while in %s state",
    TransStateAsString(s->state));
 Assert(s->parent == ((void*)0));







 for (;;)
 {



  AfterTriggerFireDeferred();






  if (!PreCommit_Portals(1))
   break;
 }

 CallXactCallbacks(XACT_EVENT_PRE_PREPARE);
 AfterTriggerEndXact(1);





 PreCommit_on_commit_actions();


 AtEOXact_LargeObject(1);






 PreCommit_CheckForSerializationFailure();
 if ((MyXactFlags & XACT_FLAGS_ACCESSEDTEMPNAMESPACE))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot PREPARE a transaction that has operated on temporary objects")));






 if (XactHasExportedSnapshots())
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot PREPARE a transaction that has exported snapshots")));





 if (XactManipulatesLogicalReplicationWorkers())
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot PREPARE a transaction that has manipulated logical replication workers")));


 HOLD_INTERRUPTS();





 s->state = TRANS_PREPARE;

 prepared_at = GetCurrentTimestamp();


 BufmgrCommit();





 gxact = MarkAsPreparing(xid, prepareGID, prepared_at,
       GetUserId(), MyDatabaseId);
 prepareGID = ((void*)0);
 StartPrepare(gxact);

 AtPrepare_Notify();
 AtPrepare_Locks();
 AtPrepare_PredicateLocks();
 AtPrepare_PgStat();
 AtPrepare_MultiXact();
 AtPrepare_RelationMap();
 EndPrepare(gxact);






 XactLastRecEnd = 0;






 ProcArrayClearTransaction(MyProc);
 CallXactCallbacks(XACT_EVENT_PREPARE);

 ResourceOwnerRelease(TopTransactionResourceOwner,
       RESOURCE_RELEASE_BEFORE_LOCKS,
       1, 1);


 AtEOXact_Buffers(1);


 AtEOXact_RelationCache(1);



 PostPrepare_PgStat();

 PostPrepare_Inval();

 PostPrepare_smgr();

 PostPrepare_MultiXact(xid);

 PostPrepare_Locks(xid);
 PostPrepare_PredicateLocks(xid);

 ResourceOwnerRelease(TopTransactionResourceOwner,
       RESOURCE_RELEASE_LOCKS,
       1, 1);
 ResourceOwnerRelease(TopTransactionResourceOwner,
       RESOURCE_RELEASE_AFTER_LOCKS,
       1, 1);






 PostPrepare_Twophase();


 AtEOXact_GUC(1, 1);
 AtEOXact_SPI(1);
 AtEOXact_Enum();
 AtEOXact_on_commit_actions(1);
 AtEOXact_Namespace(1, 0);
 AtEOXact_SMgr();
 AtEOXact_Files(1);
 AtEOXact_ComboCid();
 AtEOXact_HashTables(1);

 AtEOXact_Snapshot(1, 1);
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
