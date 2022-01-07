
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_4__ {int locks; int xid; } ;
typedef TYPE_1__ RecoveryLockListsEntry ;
typedef int HASH_SEQ_STATUS ;


 int Assert (int ) ;
 int HASH_REMOVE ;
 int RecoveryLockLists ;
 int StandbyReleaseLockList (int ) ;
 scalar_t__ StandbyTransactionIdIsPrepared (int ) ;
 int TransactionIdIsValid (int ) ;
 int TransactionIdPrecedes (int ,int ) ;
 int hash_search (int ,TYPE_1__*,int ,int *) ;
 int hash_seq_init (int *,int ) ;
 TYPE_1__* hash_seq_search (int *) ;

void
StandbyReleaseOldLocks(TransactionId oldxid)
{
 HASH_SEQ_STATUS status;
 RecoveryLockListsEntry *entry;

 hash_seq_init(&status, RecoveryLockLists);
 while ((entry = hash_seq_search(&status)))
 {
  Assert(TransactionIdIsValid(entry->xid));


  if (StandbyTransactionIdIsPrepared(entry->xid))
   continue;


  if (!TransactionIdPrecedes(entry->xid, oldxid))
   continue;


  StandbyReleaseLockList(entry->locks);
  hash_search(RecoveryLockLists, entry, HASH_REMOVE, ((void*)0));
 }
}
