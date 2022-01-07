
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ backendId; int localTransactionId; } ;
typedef TYPE_1__ VirtualTransactionId ;
typedef TYPE_2__* TransactionState ;
struct TYPE_9__ {scalar_t__ backendId; int lxid; } ;
struct TYPE_8__ {scalar_t__ state; int nestingLevel; int gucNestLevel; scalar_t__ prevSecContext; int startedInRecovery; int didLogXid; void* subTransactionId; int prevUser; scalar_t__ maxChildXids; scalar_t__ nChildXids; int * childXids; int fullTransactionId; } ;


 int AfterTriggerBeginXact () ;
 int Assert (int) ;
 int AtStart_Cache () ;
 int AtStart_GUC () ;
 int AtStart_Memory () ;
 int AtStart_ResourceOwner () ;
 TYPE_2__* CurrentTransactionState ;
 int DefaultXactDeferrable ;
 int DefaultXactIsoLevel ;
 int DefaultXactReadOnly ;
 int FirstCommandId ;
 int FullTransactionIdIsValid (int ) ;
 scalar_t__ GetCurrentTimestamp () ;
 int GetNextLocalTransactionId () ;
 int GetUserIdAndSecContext (int *,scalar_t__*) ;
 int InvalidFullTransactionId ;
 int IsParallelWorker () ;
 int MAX_RANDOM_VALUE ;
 scalar_t__ MyBackendId ;
 TYPE_5__* MyProc ;
 scalar_t__ MyXactFlags ;
 scalar_t__ RecoveryInProgress () ;
 int SPI_inside_nonatomic_context () ;
 int ShowTransactionState (char*) ;
 int TRACE_POSTGRESQL_TRANSACTION_START (int ) ;
 scalar_t__ TRANS_DEFAULT ;
 scalar_t__ TRANS_INPROGRESS ;
 scalar_t__ TRANS_START ;
 void* TopSubTransactionId ;
 TYPE_2__ TopTransactionStateData ;
 int VirtualXactLockTableInsert (TYPE_1__) ;
 int XactDeferrable ;
 int XactIsoLevel ;
 int XactReadOnly ;
 int XactTopFullTransactionId ;
 int currentCommandId ;
 int currentCommandIdUsed ;
 void* currentSubTransactionId ;
 int forceSyncCommit ;
 int log_xact_sample_rate ;
 scalar_t__ nUnreportedXids ;
 int pgstat_report_xact_timestamp (scalar_t__) ;
 int random () ;
 scalar_t__ stmtStartTimestamp ;
 scalar_t__ xactStartTimestamp ;
 scalar_t__ xactStopTimestamp ;
 int xact_is_sampled ;

__attribute__((used)) static void
StartTransaction(void)
{
 TransactionState s;
 VirtualTransactionId vxid;




 s = &TopTransactionStateData;
 CurrentTransactionState = s;

 Assert(!FullTransactionIdIsValid(XactTopFullTransactionId));


 Assert(s->state == TRANS_DEFAULT);







 s->state = TRANS_START;
 s->fullTransactionId = InvalidFullTransactionId;


 xact_is_sampled = log_xact_sample_rate != 0 &&
  (log_xact_sample_rate == 1 ||
   random() <= log_xact_sample_rate * MAX_RANDOM_VALUE);






 s->nestingLevel = 1;
 s->gucNestLevel = 1;
 s->childXids = ((void*)0);
 s->nChildXids = 0;
 s->maxChildXids = 0;





 GetUserIdAndSecContext(&s->prevUser, &s->prevSecContext);


 Assert(s->prevSecContext == 0);
 if (RecoveryInProgress())
 {
  s->startedInRecovery = 1;
  XactReadOnly = 1;
 }
 else
 {
  s->startedInRecovery = 0;
  XactReadOnly = DefaultXactReadOnly;
 }
 XactDeferrable = DefaultXactDeferrable;
 XactIsoLevel = DefaultXactIsoLevel;
 forceSyncCommit = 0;
 MyXactFlags = 0;




 s->subTransactionId = TopSubTransactionId;
 currentSubTransactionId = TopSubTransactionId;
 currentCommandId = FirstCommandId;
 currentCommandIdUsed = 0;




 nUnreportedXids = 0;
 s->didLogXid = 0;




 AtStart_Memory();
 AtStart_ResourceOwner();





 vxid.backendId = MyBackendId;
 vxid.localTransactionId = GetNextLocalTransactionId();




 VirtualXactLockTableInsert(vxid);





 Assert(MyProc->backendId == vxid.backendId);
 MyProc->lxid = vxid.localTransactionId;

 TRACE_POSTGRESQL_TRANSACTION_START(vxid.localTransactionId);
 if (!IsParallelWorker())
 {
  if (!SPI_inside_nonatomic_context())
   xactStartTimestamp = stmtStartTimestamp;
  else
   xactStartTimestamp = GetCurrentTimestamp();
 }
 else
  Assert(xactStartTimestamp != 0);
 pgstat_report_xact_timestamp(xactStartTimestamp);

 xactStopTimestamp = 0;




 AtStart_GUC();
 AtStart_Cache();
 AfterTriggerBeginXact();





 s->state = TRANS_INPROGRESS;

 ShowTransactionState("StartTransaction");
}
