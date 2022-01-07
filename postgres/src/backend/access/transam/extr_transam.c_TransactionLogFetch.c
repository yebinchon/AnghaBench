
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XidStatus ;
typedef int XLogRecPtr ;
typedef int TransactionId ;


 int BootstrapTransactionId ;
 int FrozenTransactionId ;
 scalar_t__ TRANSACTION_STATUS_ABORTED ;
 scalar_t__ TRANSACTION_STATUS_COMMITTED ;
 scalar_t__ TRANSACTION_STATUS_IN_PROGRESS ;
 scalar_t__ TRANSACTION_STATUS_SUB_COMMITTED ;
 scalar_t__ TransactionIdEquals (int ,int ) ;
 scalar_t__ TransactionIdGetStatus (int ,int *) ;
 int TransactionIdIsNormal (int ) ;
 int cachedCommitLSN ;
 int cachedFetchXid ;
 scalar_t__ cachedFetchXidStatus ;

__attribute__((used)) static XidStatus
TransactionLogFetch(TransactionId transactionId)
{
 XidStatus xidstatus;
 XLogRecPtr xidlsn;





 if (TransactionIdEquals(transactionId, cachedFetchXid))
  return cachedFetchXidStatus;




 if (!TransactionIdIsNormal(transactionId))
 {
  if (TransactionIdEquals(transactionId, BootstrapTransactionId))
   return TRANSACTION_STATUS_COMMITTED;
  if (TransactionIdEquals(transactionId, FrozenTransactionId))
   return TRANSACTION_STATUS_COMMITTED;
  return TRANSACTION_STATUS_ABORTED;
 }




 xidstatus = TransactionIdGetStatus(transactionId, &xidlsn);





 if (xidstatus != TRANSACTION_STATUS_IN_PROGRESS &&
  xidstatus != TRANSACTION_STATUS_SUB_COMMITTED)
 {
  cachedFetchXid = transactionId;
  cachedFetchXidStatus = xidstatus;
  cachedCommitLSN = xidlsn;
 }

 return xidstatus;
}
