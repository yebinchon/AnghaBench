
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int locks; } ;
typedef TYPE_1__ RecoveryLockListsEntry ;
typedef int HASH_SEQ_STATUS ;


 int DEBUG2 ;
 int HASH_REMOVE ;
 int RecoveryLockLists ;
 int StandbyReleaseLockList (int ) ;
 int elog (int ,char*) ;
 int hash_search (int ,TYPE_1__*,int ,int *) ;
 int hash_seq_init (int *,int ) ;
 TYPE_1__* hash_seq_search (int *) ;
 int trace_recovery (int ) ;

void
StandbyReleaseAllLocks(void)
{
 HASH_SEQ_STATUS status;
 RecoveryLockListsEntry *entry;

 elog(trace_recovery(DEBUG2), "release all standby locks");

 hash_seq_init(&status, RecoveryLockLists);
 while ((entry = hash_seq_search(&status)))
 {
  StandbyReleaseLockList(entry->locks);
  hash_search(RecoveryLockLists, entry, HASH_REMOVE, ((void*)0));
 }
}
