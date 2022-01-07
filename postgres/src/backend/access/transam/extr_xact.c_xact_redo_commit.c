
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xinfo; scalar_t__ nrels; int xnodes; int origin_lsn; int subxacts; int nsubxacts; int tsId; int dbId; int nmsgs; int msgs; int xact_time; int origin_timestamp; } ;
typedef TYPE_1__ xl_xact_parsed_commit ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef int TimestampTz ;
typedef int RepOriginId ;


 int AdvanceNextFullTransactionIdPastXid (int ) ;
 int Assert (int) ;
 int DropRelationFiles (int ,scalar_t__,int) ;
 int ExpireTreeKnownAssignedTransactionIds (int ,int ,int ,int ) ;
 int InvalidRepOriginId ;
 int ProcessCommittedInvalidationMessages (int ,int ,int ,int ,int ) ;
 int RecordKnownAssignedTransactionIds (int ) ;
 scalar_t__ STANDBY_DISABLED ;
 int StandbyReleaseLockTree (int ,int ,int ) ;
 int TransactionIdAsyncCommitTree (int ,int ,int ,int ) ;
 int TransactionIdCommitTree (int ,int ,int ) ;
 int TransactionIdIsValid (int ) ;
 int TransactionIdLatest (int ,int ,int ) ;
 int TransactionTreeSetCommitTsData (int ,int ,int ,int ,int ,int) ;
 int XACT_XINFO_HAS_AE_LOCKS ;
 int XACT_XINFO_HAS_ORIGIN ;
 int XLogFlush (int ) ;
 int XLogRequestWalReceiverReply () ;
 scalar_t__ XactCompletionApplyFeedback (int) ;
 scalar_t__ XactCompletionForceSyncCommit (int) ;
 int XactCompletionRelcacheInitFileInval (int) ;
 int replorigin_advance (int ,int ,int ,int,int) ;
 scalar_t__ standbyState ;

__attribute__((used)) static void
xact_redo_commit(xl_xact_parsed_commit *parsed,
     TransactionId xid,
     XLogRecPtr lsn,
     RepOriginId origin_id)
{
 TransactionId max_xid;
 TimestampTz commit_time;

 Assert(TransactionIdIsValid(xid));

 max_xid = TransactionIdLatest(xid, parsed->nsubxacts, parsed->subxacts);


 AdvanceNextFullTransactionIdPastXid(max_xid);

 Assert(((parsed->xinfo & XACT_XINFO_HAS_ORIGIN) == 0) ==
     (origin_id == InvalidRepOriginId));

 if (parsed->xinfo & XACT_XINFO_HAS_ORIGIN)
  commit_time = parsed->origin_timestamp;
 else
  commit_time = parsed->xact_time;


 TransactionTreeSetCommitTsData(xid, parsed->nsubxacts, parsed->subxacts,
           commit_time, origin_id, 0);

 if (standbyState == STANDBY_DISABLED)
 {



  TransactionIdCommitTree(xid, parsed->nsubxacts, parsed->subxacts);
 }
 else
 {
  RecordKnownAssignedTransactionIds(max_xid);
  TransactionIdAsyncCommitTree(
          xid, parsed->nsubxacts, parsed->subxacts, lsn);




  ExpireTreeKnownAssignedTransactionIds(
             xid, parsed->nsubxacts, parsed->subxacts, max_xid);






  ProcessCommittedInvalidationMessages(
            parsed->msgs, parsed->nmsgs,
            XactCompletionRelcacheInitFileInval(parsed->xinfo),
            parsed->dbId, parsed->tsId);






  if (parsed->xinfo & XACT_XINFO_HAS_AE_LOCKS)
   StandbyReleaseLockTree(xid, parsed->nsubxacts, parsed->subxacts);
 }

 if (parsed->xinfo & XACT_XINFO_HAS_ORIGIN)
 {

  replorigin_advance(origin_id, parsed->origin_lsn, lsn,
         0 , 0 );
 }


 if (parsed->nrels > 0)
 {
  XLogFlush(lsn);


  DropRelationFiles(parsed->xnodes, parsed->nrels, 1);
 }
 if (XactCompletionForceSyncCommit(parsed->xinfo))
  XLogFlush(lsn);






 if (XactCompletionApplyFeedback(parsed->xinfo))
  XLogRequestWalReceiverReply();
}
