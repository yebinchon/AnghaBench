
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ExpireAllKnownAssignedTransactionIds () ;
 int * RecoveryLockLists ;
 int StandbyReleaseAllLocks () ;
 int VirtualXactLockTableCleanup () ;
 int hash_destroy (int *) ;

void
ShutdownRecoveryTransactionEnvironment(void)
{

 ExpireAllKnownAssignedTransactionIds();


 StandbyReleaseAllLocks();


 hash_destroy(RecoveryLockLists);
 RecoveryLockLists = ((void*)0);


 VirtualXactLockTableCleanup();
}
