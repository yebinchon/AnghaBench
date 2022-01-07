
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ TransactionId ;
struct TYPE_2__ {scalar_t__ oldestCommitTsXid; } ;


 int CommitTsLock ;
 scalar_t__ InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* ShmemVariableCache ;
 scalar_t__ TransactionIdPrecedes (scalar_t__,scalar_t__) ;

void
AdvanceOldestCommitTsXid(TransactionId oldestXact)
{
 LWLockAcquire(CommitTsLock, LW_EXCLUSIVE);
 if (ShmemVariableCache->oldestCommitTsXid != InvalidTransactionId &&
  TransactionIdPrecedes(ShmemVariableCache->oldestCommitTsXid, oldestXact))
  ShmemVariableCache->oldestCommitTsXid = oldestXact;
 LWLockRelease(CommitTsLock);
}
