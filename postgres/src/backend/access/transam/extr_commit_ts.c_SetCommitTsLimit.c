
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* TransactionId ;
struct TYPE_2__ {scalar_t__ oldestCommitTsXid; void* newestCommitTsXid; } ;


 int Assert (int) ;
 int CommitTsLock ;
 scalar_t__ InvalidTransactionId ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* ShmemVariableCache ;
 scalar_t__ TransactionIdPrecedes (void*,void*) ;

void
SetCommitTsLimit(TransactionId oldestXact, TransactionId newestXact)
{




 LWLockAcquire(CommitTsLock, LW_EXCLUSIVE);
 if (ShmemVariableCache->oldestCommitTsXid != InvalidTransactionId)
 {
  if (TransactionIdPrecedes(ShmemVariableCache->oldestCommitTsXid, oldestXact))
   ShmemVariableCache->oldestCommitTsXid = oldestXact;
  if (TransactionIdPrecedes(newestXact, ShmemVariableCache->newestCommitTsXid))
   ShmemVariableCache->newestCommitTsXid = newestXact;
 }
 else
 {
  Assert(ShmemVariableCache->newestCommitTsXid == InvalidTransactionId);
  ShmemVariableCache->oldestCommitTsXid = oldestXact;
  ShmemVariableCache->newestCommitTsXid = newestXact;
 }
 LWLockRelease(CommitTsLock);
}
