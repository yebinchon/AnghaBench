
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 scalar_t__ TransactionIdEquals (int ,int ) ;
 int cachedFetchXid ;

bool
TransactionIdIsKnownCompleted(TransactionId transactionId)
{
 if (TransactionIdEquals(transactionId, cachedFetchXid))
 {

  return 1;
 }

 return 0;
}
