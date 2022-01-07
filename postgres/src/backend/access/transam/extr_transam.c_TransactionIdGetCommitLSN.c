
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int TransactionId ;


 int InvalidXLogRecPtr ;
 scalar_t__ TransactionIdEquals (int ,int ) ;
 int TransactionIdGetStatus (int ,int *) ;
 int TransactionIdIsNormal (int ) ;
 int cachedCommitLSN ;
 int cachedFetchXid ;

XLogRecPtr
TransactionIdGetCommitLSN(TransactionId xid)
{
 XLogRecPtr result;







 if (TransactionIdEquals(xid, cachedFetchXid))
  return cachedCommitLSN;


 if (!TransactionIdIsNormal(xid))
  return InvalidXLogRecPtr;




 (void) TransactionIdGetStatus(xid, &result);

 return result;
}
