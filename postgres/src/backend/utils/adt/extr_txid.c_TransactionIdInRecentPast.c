
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64 ;
typedef scalar_t__ uint32 ;
typedef scalar_t__ TransactionId ;
struct TYPE_2__ {int oldestClogXid; } ;
typedef int FullTransactionId ;


 int Assert (int ) ;
 int CLogTruncationLock ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ EpochFromFullTransactionId (int ) ;
 int LWLockHeldByMe (int ) ;
 int ReadNextFullTransactionId () ;
 TYPE_1__* ShmemVariableCache ;
 int TransactionIdIsNormal (scalar_t__) ;
 int TransactionIdIsValid (scalar_t__) ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,int ) ;
 int U64FromFullTransactionId (int ) ;
 int UINT64_FORMAT ;
 scalar_t__ XidFromFullTransactionId (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int psprintf (int ,int) ;

__attribute__((used)) static bool
TransactionIdInRecentPast(uint64 xid_with_epoch, TransactionId *extracted_xid)
{
 uint32 xid_epoch = (uint32) (xid_with_epoch >> 32);
 TransactionId xid = (TransactionId) xid_with_epoch;
 uint32 now_epoch;
 TransactionId now_epoch_next_xid;
 FullTransactionId now_fullxid;

 now_fullxid = ReadNextFullTransactionId();
 now_epoch_next_xid = XidFromFullTransactionId(now_fullxid);
 now_epoch = EpochFromFullTransactionId(now_fullxid);

 if (extracted_xid != ((void*)0))
  *extracted_xid = xid;

 if (!TransactionIdIsValid(xid))
  return 0;


 if (!TransactionIdIsNormal(xid))
  return 1;


 if (xid_with_epoch >= U64FromFullTransactionId(now_fullxid))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("transaction ID %s is in the future",
      psprintf(UINT64_FORMAT, xid_with_epoch))));
 Assert(LWLockHeldByMe(CLogTruncationLock));







 if (xid_epoch + 1 < now_epoch
  || (xid_epoch + 1 == now_epoch && xid < now_epoch_next_xid)
  || TransactionIdPrecedes(xid, ShmemVariableCache->oldestClogXid))
  return 0;

 return 1;
}
