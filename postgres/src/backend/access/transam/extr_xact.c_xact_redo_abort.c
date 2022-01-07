
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xinfo; int nrels; int xnodes; int subxacts; int nsubxacts; } ;
typedef TYPE_1__ xl_xact_parsed_abort ;
typedef int TransactionId ;


 int AdvanceNextFullTransactionIdPastXid (int ) ;
 int Assert (int ) ;
 int DropRelationFiles (int ,int ,int) ;
 int ExpireTreeKnownAssignedTransactionIds (int ,int ,int ,int ) ;
 int RecordKnownAssignedTransactionIds (int ) ;
 scalar_t__ STANDBY_DISABLED ;
 int StandbyReleaseLockTree (int ,int ,int ) ;
 int TransactionIdAbortTree (int ,int ,int ) ;
 int TransactionIdIsValid (int ) ;
 int TransactionIdLatest (int ,int ,int ) ;
 int XACT_XINFO_HAS_AE_LOCKS ;
 scalar_t__ standbyState ;

__attribute__((used)) static void
xact_redo_abort(xl_xact_parsed_abort *parsed, TransactionId xid)
{
 TransactionId max_xid;

 Assert(TransactionIdIsValid(xid));


 max_xid = TransactionIdLatest(xid,
          parsed->nsubxacts,
          parsed->subxacts);
 AdvanceNextFullTransactionIdPastXid(max_xid);

 if (standbyState == STANDBY_DISABLED)
 {

  TransactionIdAbortTree(xid, parsed->nsubxacts, parsed->subxacts);
 }
 else
 {
  RecordKnownAssignedTransactionIds(max_xid);


  TransactionIdAbortTree(xid, parsed->nsubxacts, parsed->subxacts);




  ExpireTreeKnownAssignedTransactionIds(
             xid, parsed->nsubxacts, parsed->subxacts, max_xid);
  if (parsed->xinfo & XACT_XINFO_HAS_AE_LOCKS)
   StandbyReleaseLockTree(xid, parsed->nsubxacts, parsed->subxacts);
 }


 DropRelationFiles(parsed->xnodes, parsed->nrels, 1);
}
