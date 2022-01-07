
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef scalar_t__ TransactionId ;
typedef int FullTransactionId ;


 int Assert (int ) ;
 scalar_t__ EpochFromFullTransactionId (int ) ;
 int FullTransactionIdFromEpochAndXid (scalar_t__,scalar_t__) ;
 int ReadNextFullTransactionId () ;
 scalar_t__ RecentGlobalXmin ;
 int TransactionIdIsNormal (scalar_t__) ;
 scalar_t__ XidFromFullTransactionId (int ) ;

FullTransactionId
GetFullRecentGlobalXmin(void)
{
 FullTransactionId nextxid_full;
 uint32 nextxid_epoch;
 TransactionId nextxid_xid;
 uint32 epoch;

 Assert(TransactionIdIsNormal(RecentGlobalXmin));






 nextxid_full = ReadNextFullTransactionId();
 nextxid_epoch = EpochFromFullTransactionId(nextxid_full);
 nextxid_xid = XidFromFullTransactionId(nextxid_full);

 if (RecentGlobalXmin > nextxid_xid)
  epoch = nextxid_epoch - 1;
 else
  epoch = nextxid_epoch;

 return FullTransactionIdFromEpochAndXid(epoch, RecentGlobalXmin);
}
