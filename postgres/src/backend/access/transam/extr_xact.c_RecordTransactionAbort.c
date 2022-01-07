
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef int TimestampTz ;
typedef int RelFileNode ;


 int END_CRIT_SECTION () ;
 int GetCurrentTimestamp () ;
 int GetCurrentTransactionIdIfAny () ;
 int InvalidTransactionId ;
 int MyXactFlags ;
 int PANIC ;
 int START_CRIT_SECTION () ;
 int SetCurrentTransactionStopTimestamp () ;
 int TransactionIdAbortTree (int ,int,int *) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 int TransactionIdIsValid (int ) ;
 int TransactionIdLatest (int ,int,int *) ;
 int XLogSetAsyncXactLSN (scalar_t__) ;
 scalar_t__ XactLastRecEnd ;
 int XactLogAbortRecord (int ,int,int *,int,int *,int ,int ,int *) ;
 int XidCacheRemoveRunningXids (int ,int,int *,int ) ;
 int elog (int ,char*,int ) ;
 int pfree (int *) ;
 int smgrGetPendingDeletes (int,int **) ;
 int xactGetCommittedChildren (int **) ;
 int xactStopTimestamp ;

__attribute__((used)) static TransactionId
RecordTransactionAbort(bool isSubXact)
{
 TransactionId xid = GetCurrentTransactionIdIfAny();
 TransactionId latestXid;
 int nrels;
 RelFileNode *rels;
 int nchildren;
 TransactionId *children;
 TimestampTz xact_time;







 if (!TransactionIdIsValid(xid))
 {

  if (!isSubXact)
   XactLastRecEnd = 0;
  return InvalidTransactionId;
 }
 if (TransactionIdDidCommit(xid))
  elog(PANIC, "cannot abort transaction %u, it was already committed",
    xid);


 nrels = smgrGetPendingDeletes(0, &rels);
 nchildren = xactGetCommittedChildren(&children);


 START_CRIT_SECTION();


 if (isSubXact)
  xact_time = GetCurrentTimestamp();
 else
 {
  SetCurrentTransactionStopTimestamp();
  xact_time = xactStopTimestamp;
 }

 XactLogAbortRecord(xact_time,
        nchildren, children,
        nrels, rels,
        MyXactFlags, InvalidTransactionId,
        ((void*)0));
 if (!isSubXact)
  XLogSetAsyncXactLSN(XactLastRecEnd);
 TransactionIdAbortTree(xid, nchildren, children);

 END_CRIT_SECTION();


 latestXid = TransactionIdLatest(xid, nchildren, children);







 if (isSubXact)
  XidCacheRemoveRunningXids(xid, nchildren, children, latestXid);


 if (!isSubXact)
  XactLastRecEnd = 0;


 if (rels)
  pfree(rels);

 return latestXid;
}
