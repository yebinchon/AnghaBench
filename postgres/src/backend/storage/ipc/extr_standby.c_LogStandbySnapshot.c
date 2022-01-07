
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xl_standby_lock ;
typedef int XLogRecPtr ;
typedef int RunningTransactions ;


 int Assert (int ) ;
 int GetRunningTransactionData () ;
 int * GetRunningTransactionLocks (int*) ;
 int LWLockRelease (int ) ;
 int LogAccessExclusiveLocks (int,int *) ;
 int LogCurrentRunningXacts (int ) ;
 int ProcArrayLock ;
 scalar_t__ WAL_LEVEL_LOGICAL ;
 int XLogStandbyInfoActive () ;
 int XidGenLock ;
 int pfree (int *) ;
 scalar_t__ wal_level ;

XLogRecPtr
LogStandbySnapshot(void)
{
 XLogRecPtr recptr;
 RunningTransactions running;
 xl_standby_lock *locks;
 int nlocks;

 Assert(XLogStandbyInfoActive());




 locks = GetRunningTransactionLocks(&nlocks);
 if (nlocks > 0)
  LogAccessExclusiveLocks(nlocks, locks);
 pfree(locks);





 running = GetRunningTransactionData();
 if (wal_level < WAL_LEVEL_LOGICAL)
  LWLockRelease(ProcArrayLock);

 recptr = LogCurrentRunningXacts(running);


 if (wal_level >= WAL_LEVEL_LOGICAL)
  LWLockRelease(ProcArrayLock);


 LWLockRelease(XidGenLock);

 return recptr;
}
