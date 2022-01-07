
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TransactionId ;


 int AdvanceNextFullTransactionIdPastXid (scalar_t__) ;
 int Assert (int) ;
 int DEBUG4 ;
 int ExtendSUBTRANS (scalar_t__) ;
 int KnownAssignedXidsAdd (scalar_t__,scalar_t__,int) ;
 scalar_t__ STANDBY_INITIALIZED ;
 int TransactionIdAdvance (scalar_t__) ;
 scalar_t__ TransactionIdFollows (scalar_t__,scalar_t__) ;
 int TransactionIdIsValid (scalar_t__) ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,scalar_t__) ;
 int elog (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ latestObservedXid ;
 scalar_t__ standbyState ;
 int trace_recovery (int ) ;

void
RecordKnownAssignedTransactionIds(TransactionId xid)
{
 Assert(standbyState >= STANDBY_INITIALIZED);
 Assert(TransactionIdIsValid(xid));
 Assert(TransactionIdIsValid(latestObservedXid));

 elog(trace_recovery(DEBUG4), "record known xact %u latestObservedXid %u",
   xid, latestObservedXid);






 if (TransactionIdFollows(xid, latestObservedXid))
 {
  TransactionId next_expected_xid;
  next_expected_xid = latestObservedXid;
  while (TransactionIdPrecedes(next_expected_xid, xid))
  {
   TransactionIdAdvance(next_expected_xid);
   ExtendSUBTRANS(next_expected_xid);
  }
  Assert(next_expected_xid == xid);





  if (standbyState <= STANDBY_INITIALIZED)
  {
   latestObservedXid = xid;
   return;
  }




  next_expected_xid = latestObservedXid;
  TransactionIdAdvance(next_expected_xid);
  KnownAssignedXidsAdd(next_expected_xid, xid, 0);




  latestObservedXid = xid;


  AdvanceNextFullTransactionIdPastXid(latestObservedXid);
  next_expected_xid = latestObservedXid;
  TransactionIdAdvance(next_expected_xid);
 }
}
