
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XidStatus ;
typedef int TransactionId ;


 int SubTransGetParent (int ) ;
 scalar_t__ TRANSACTION_STATUS_COMMITTED ;
 scalar_t__ TRANSACTION_STATUS_SUB_COMMITTED ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 scalar_t__ TransactionLogFetch (int ) ;
 int TransactionXmin ;
 int WARNING ;
 int elog (int ,char*,int ) ;

bool
TransactionIdDidCommit(TransactionId transactionId)
{
 XidStatus xidstatus;

 xidstatus = TransactionLogFetch(transactionId);




 if (xidstatus == TRANSACTION_STATUS_COMMITTED)
  return 1;
 if (xidstatus == TRANSACTION_STATUS_SUB_COMMITTED)
 {
  TransactionId parentXid;

  if (TransactionIdPrecedes(transactionId, TransactionXmin))
   return 0;
  parentXid = SubTransGetParent(transactionId);
  if (!TransactionIdIsValid(parentXid))
  {
   elog(WARNING, "no pg_subtrans entry for subcommitted XID %u",
     transactionId);
   return 0;
  }
  return TransactionIdDidCommit(parentXid);
 }




 return 0;
}
