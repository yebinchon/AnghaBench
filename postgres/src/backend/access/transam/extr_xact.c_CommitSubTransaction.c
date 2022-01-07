
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* TransactionState ;
struct TYPE_5__ {scalar_t__ state; int * curTransactionOwner; TYPE_1__* parent; int prevXactReadOnly; int nestingLevel; int subTransactionId; int gucNestLevel; int fullTransactionId; scalar_t__ parallelModeLevel; } ;
struct TYPE_4__ {int * curTransactionOwner; int subTransactionId; } ;


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
 int AtSubCommit_Memory () ;
 int AtSubCommit_Notify () ;
 int AtSubCommit_Portals (int ,int ,int *) ;
 int AtSubCommit_Snapshot (int ) ;
 int AtSubCommit_childXids () ;
 int AtSubCommit_smgr () ;
 int CallSubXactCallbacks (int ,int ,int ) ;
 int CommandCounterIncrement () ;
 int * CurTransactionResourceOwner ;
 int * CurrentResourceOwner ;
 TYPE_2__* CurrentTransactionState ;
 scalar_t__ FullTransactionIdIsValid (int ) ;
 scalar_t__ IsInParallelMode () ;
 int PopTransaction () ;
 int RESOURCE_RELEASE_AFTER_LOCKS ;
 int RESOURCE_RELEASE_BEFORE_LOCKS ;
 int RESOURCE_RELEASE_LOCKS ;
 int ResourceOwnerDelete (int *) ;
 int ResourceOwnerRelease (int *,int ,int,int) ;
 int SUBXACT_EVENT_COMMIT_SUB ;
 int SUBXACT_EVENT_PRE_COMMIT_SUB ;
 int ShowTransactionState (char*) ;
 scalar_t__ TRANS_COMMIT ;
 scalar_t__ TRANS_DEFAULT ;
 scalar_t__ TRANS_INPROGRESS ;
 int TransStateAsString (scalar_t__) ;
 int WARNING ;
 int XactLockTableDelete (int ) ;
 int XactReadOnly ;
 int XidFromFullTransactionId (int ) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
CommitSubTransaction(void)
{
 TransactionState s = CurrentTransactionState;

 ShowTransactionState("CommitSubTransaction");

 if (s->state != TRANS_INPROGRESS)
  elog(WARNING, "CommitSubTransaction while in %s state",
    TransStateAsString(s->state));



 CallSubXactCallbacks(SUBXACT_EVENT_PRE_COMMIT_SUB, s->subTransactionId,
       s->parent->subTransactionId);


 if (IsInParallelMode())
 {
  AtEOSubXact_Parallel(1, s->subTransactionId);
  s->parallelModeLevel = 0;
 }


 s->state = TRANS_COMMIT;


 CommandCounterIncrement();
 if (FullTransactionIdIsValid(s->fullTransactionId))
  AtSubCommit_childXids();
 AfterTriggerEndSubXact(1);
 AtSubCommit_Portals(s->subTransactionId,
      s->parent->subTransactionId,
      s->parent->curTransactionOwner);
 AtEOSubXact_LargeObject(1, s->subTransactionId,
       s->parent->subTransactionId);
 AtSubCommit_Notify();

 CallSubXactCallbacks(SUBXACT_EVENT_COMMIT_SUB, s->subTransactionId,
       s->parent->subTransactionId);

 ResourceOwnerRelease(s->curTransactionOwner,
       RESOURCE_RELEASE_BEFORE_LOCKS,
       1, 0);
 AtEOSubXact_RelationCache(1, s->subTransactionId,
         s->parent->subTransactionId);
 AtEOSubXact_Inval(1);
 AtSubCommit_smgr();




 CurrentResourceOwner = s->curTransactionOwner;
 if (FullTransactionIdIsValid(s->fullTransactionId))
  XactLockTableDelete(XidFromFullTransactionId(s->fullTransactionId));




 ResourceOwnerRelease(s->curTransactionOwner,
       RESOURCE_RELEASE_LOCKS,
       1, 0);
 ResourceOwnerRelease(s->curTransactionOwner,
       RESOURCE_RELEASE_AFTER_LOCKS,
       1, 0);

 AtEOXact_GUC(1, s->gucNestLevel);
 AtEOSubXact_SPI(1, s->subTransactionId);
 AtEOSubXact_on_commit_actions(1, s->subTransactionId,
          s->parent->subTransactionId);
 AtEOSubXact_Namespace(1, s->subTransactionId,
        s->parent->subTransactionId);
 AtEOSubXact_Files(1, s->subTransactionId,
       s->parent->subTransactionId);
 AtEOSubXact_HashTables(1, s->nestingLevel);
 AtEOSubXact_PgStat(1, s->nestingLevel);
 AtSubCommit_Snapshot(s->nestingLevel);
 AtEOSubXact_ApplyLauncher(1, s->nestingLevel);






 XactReadOnly = s->prevXactReadOnly;

 CurrentResourceOwner = s->parent->curTransactionOwner;
 CurTransactionResourceOwner = s->parent->curTransactionOwner;
 ResourceOwnerDelete(s->curTransactionOwner);
 s->curTransactionOwner = ((void*)0);

 AtSubCommit_Memory();

 s->state = TRANS_DEFAULT;

 PopTransaction();
}
