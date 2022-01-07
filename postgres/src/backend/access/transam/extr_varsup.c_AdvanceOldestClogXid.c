
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int oldestClogXid; } ;


 int CLogTruncationLock ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* ShmemVariableCache ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;

void
AdvanceOldestClogXid(TransactionId oldest_datfrozenxid)
{
 LWLockAcquire(CLogTruncationLock, LW_EXCLUSIVE);
 if (TransactionIdPrecedes(ShmemVariableCache->oldestClogXid,
         oldest_datfrozenxid))
 {
  ShmemVariableCache->oldestClogXid = oldest_datfrozenxid;
 }
 LWLockRelease(CLogTruncationLock);
}
