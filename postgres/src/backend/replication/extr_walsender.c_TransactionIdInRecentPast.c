
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef scalar_t__ TransactionId ;
typedef int FullTransactionId ;


 scalar_t__ EpochFromFullTransactionId (int ) ;
 int ReadNextFullTransactionId () ;
 int TransactionIdPrecedesOrEquals (scalar_t__,scalar_t__) ;
 scalar_t__ XidFromFullTransactionId (int ) ;

__attribute__((used)) static bool
TransactionIdInRecentPast(TransactionId xid, uint32 epoch)
{
 FullTransactionId nextFullXid;
 TransactionId nextXid;
 uint32 nextEpoch;

 nextFullXid = ReadNextFullTransactionId();
 nextXid = XidFromFullTransactionId(nextFullXid);
 nextEpoch = EpochFromFullTransactionId(nextFullXid);

 if (xid <= nextXid)
 {
  if (epoch != nextEpoch)
   return 0;
 }
 else
 {
  if (epoch + 1 != nextEpoch)
   return 0;
 }

 if (!TransactionIdPrecedesOrEquals(xid, nextXid))
  return 0;

 return 1;
}
