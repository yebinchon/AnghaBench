
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int delayChkpt; } ;
typedef int SharedInvalidationMessage ;
typedef int RelFileNode ;


 int Assert (int) ;
 int BufmgrCommit () ;
 scalar_t__ DoNotReplicateId ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 int GetTopTransactionIdIfAny () ;
 scalar_t__ InvalidRepOriginId ;
 int InvalidTransactionId ;
 int LogStandbyInvalidations (int,int *,int) ;
 TYPE_1__* MyPgXact ;
 int MyXactFlags ;
 int START_CRIT_SECTION () ;
 scalar_t__ SYNCHRONOUS_COMMIT_OFF ;
 int SetCurrentTransactionStopTimestamp () ;
 int SyncRepWaitForLSN (scalar_t__,int) ;
 int TransactionIdAsyncCommitTree (int ,int,int *,scalar_t__) ;
 int TransactionIdCommitTree (int ,int,int *) ;
 int TransactionIdIsValid (int ) ;
 int TransactionIdLatest (int ,int,int *) ;
 int TransactionTreeSetCommitTsData (int ,int,int *,scalar_t__,scalar_t__,int) ;
 int XLogFlush (scalar_t__) ;
 int XLogSetAsyncXactLSN (scalar_t__) ;
 scalar_t__ XLogStandbyInfoActive () ;
 scalar_t__ XactLastCommitEnd ;
 scalar_t__ XactLastRecEnd ;
 int XactLogCommitRecord (scalar_t__,int,int *,int,int *,int,int *,int,scalar_t__,int ,int ,int *) ;
 int elog (int ,char*) ;
 scalar_t__ forceSyncCommit ;
 int pfree (int *) ;
 int replorigin_session_advance (int ,scalar_t__) ;
 scalar_t__ replorigin_session_origin ;
 int replorigin_session_origin_lsn ;
 scalar_t__ replorigin_session_origin_timestamp ;
 int smgrGetPendingDeletes (int,int **) ;
 scalar_t__ synchronous_commit ;
 int xactGetCommittedChildren (int **) ;
 int xactGetCommittedInvalidationMessages (int **,int*) ;
 scalar_t__ xactStopTimestamp ;

__attribute__((used)) static TransactionId
RecordTransactionCommit(void)
{
 TransactionId xid = GetTopTransactionIdIfAny();
 bool markXidCommitted = TransactionIdIsValid(xid);
 TransactionId latestXid = InvalidTransactionId;
 int nrels;
 RelFileNode *rels;
 int nchildren;
 TransactionId *children;
 int nmsgs = 0;
 SharedInvalidationMessage *invalMessages = ((void*)0);
 bool RelcacheInitFileInval = 0;
 bool wrote_xlog;


 nrels = smgrGetPendingDeletes(1, &rels);
 nchildren = xactGetCommittedChildren(&children);
 if (XLogStandbyInfoActive())
  nmsgs = xactGetCommittedInvalidationMessages(&invalMessages,
              &RelcacheInitFileInval);
 wrote_xlog = (XactLastRecEnd != 0);





 if (!markXidCommitted)
 {






  if (nrels != 0)
   elog(ERROR, "cannot commit a transaction that deleted files but has no xid");


  Assert(nchildren == 0);
  if (nmsgs != 0)
  {
   LogStandbyInvalidations(nmsgs, invalMessages,
         RelcacheInitFileInval);
   wrote_xlog = 1;
  }







  if (!wrote_xlog)
   goto cleanup;
 }
 else
 {
  bool replorigin;





  replorigin = (replorigin_session_origin != InvalidRepOriginId &&
       replorigin_session_origin != DoNotReplicateId);





  BufmgrCommit();
  START_CRIT_SECTION();
  MyPgXact->delayChkpt = 1;

  SetCurrentTransactionStopTimestamp();

  XactLogCommitRecord(xactStopTimestamp,
       nchildren, children, nrels, rels,
       nmsgs, invalMessages,
       RelcacheInitFileInval, forceSyncCommit,
       MyXactFlags,
       InvalidTransactionId, ((void*)0) );

  if (replorigin)

   replorigin_session_advance(replorigin_session_origin_lsn,
            XactLastRecEnd);
  if (!replorigin || replorigin_session_origin_timestamp == 0)
   replorigin_session_origin_timestamp = xactStopTimestamp;

  TransactionTreeSetCommitTsData(xid, nchildren, children,
            replorigin_session_origin_timestamp,
            replorigin_session_origin, 0);
 }
 if ((wrote_xlog && markXidCommitted &&
   synchronous_commit > SYNCHRONOUS_COMMIT_OFF) ||
  forceSyncCommit || nrels > 0)
 {
  XLogFlush(XactLastRecEnd);




  if (markXidCommitted)
   TransactionIdCommitTree(xid, nchildren, children);
 }
 else
 {
  XLogSetAsyncXactLSN(XactLastRecEnd);






  if (markXidCommitted)
   TransactionIdAsyncCommitTree(xid, nchildren, children, XactLastRecEnd);
 }





 if (markXidCommitted)
 {
  MyPgXact->delayChkpt = 0;
  END_CRIT_SECTION();
 }


 latestXid = TransactionIdLatest(xid, nchildren, children);
 if (wrote_xlog && markXidCommitted)
  SyncRepWaitForLSN(XactLastRecEnd, 1);


 XactLastCommitEnd = XactLastRecEnd;


 XactLastRecEnd = 0;
cleanup:

 if (rels)
  pfree(rels);

 return latestXid;
}
