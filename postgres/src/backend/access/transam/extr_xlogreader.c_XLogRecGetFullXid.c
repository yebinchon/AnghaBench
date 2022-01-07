
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
typedef int XLogReaderState ;
typedef scalar_t__ TransactionId ;
struct TYPE_2__ {int nextFullXid; } ;
typedef int FullTransactionId ;


 scalar_t__ AmStartupProcess () ;
 int Assert (int) ;
 int EpochFromFullTransactionId (int ) ;
 int FullTransactionIdFromEpochAndXid (int ,scalar_t__) ;
 int IsUnderPostmaster ;
 TYPE_1__* ShmemVariableCache ;
 scalar_t__ XLogRecGetXid (int *) ;
 scalar_t__ XidFromFullTransactionId (int ) ;
 scalar_t__ unlikely (int) ;

FullTransactionId
XLogRecGetFullXid(XLogReaderState *record)
{
 TransactionId xid,
     next_xid;
 uint32 epoch;





 Assert(AmStartupProcess() || !IsUnderPostmaster);

 xid = XLogRecGetXid(record);
 next_xid = XidFromFullTransactionId(ShmemVariableCache->nextFullXid);
 epoch = EpochFromFullTransactionId(ShmemVariableCache->nextFullXid);





 if (unlikely(xid > next_xid))
  --epoch;

 return FullTransactionIdFromEpochAndXid(epoch, xid);
}
