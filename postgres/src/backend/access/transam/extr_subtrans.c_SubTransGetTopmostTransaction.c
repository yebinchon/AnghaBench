
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int Assert (scalar_t__) ;
 int ERROR ;
 int SubTransGetParent (int ) ;
 scalar_t__ TransactionIdFollowsOrEquals (int ,int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int TransactionXmin ;
 int elog (int ,char*,int ,int ) ;

TransactionId
SubTransGetTopmostTransaction(TransactionId xid)
{
 TransactionId parentXid = xid,
    previousXid = xid;


 Assert(TransactionIdFollowsOrEquals(xid, TransactionXmin));

 while (TransactionIdIsValid(parentXid))
 {
  previousXid = parentXid;
  if (TransactionIdPrecedes(parentXid, TransactionXmin))
   break;
  parentXid = SubTransGetParent(parentXid);






  if (!TransactionIdPrecedes(parentXid, previousXid))
   elog(ERROR, "pg_subtrans contains invalid entry: xid %u points to parent xid %u",
     previousXid, parentXid);
 }

 Assert(TransactionIdIsValid(previousXid));

 return previousXid;
}
