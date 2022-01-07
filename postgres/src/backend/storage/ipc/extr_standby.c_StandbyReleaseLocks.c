
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int locks; } ;
typedef TYPE_1__ TransactionId ;
typedef TYPE_1__ RecoveryLockListsEntry ;


 int HASH_FIND ;
 int HASH_REMOVE ;
 int RecoveryLockLists ;
 int StandbyReleaseAllLocks () ;
 int StandbyReleaseLockList (int ) ;
 scalar_t__ TransactionIdIsValid (TYPE_1__) ;
 TYPE_1__* hash_search (int ,TYPE_1__*,int ,int *) ;

__attribute__((used)) static void
StandbyReleaseLocks(TransactionId xid)
{
 RecoveryLockListsEntry *entry;

 if (TransactionIdIsValid(xid))
 {
  if ((entry = hash_search(RecoveryLockLists, &xid, HASH_FIND, ((void*)0))))
  {
   StandbyReleaseLockList(entry->locks);
   hash_search(RecoveryLockLists, entry, HASH_REMOVE, ((void*)0));
  }
 }
 else
  StandbyReleaseAllLocks();
}
