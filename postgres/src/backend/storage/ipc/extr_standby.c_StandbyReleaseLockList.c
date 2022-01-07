
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relOid; int dbOid; int xid; } ;
typedef TYPE_1__ xl_standby_lock ;
typedef int List ;
typedef int LOCKTAG ;


 int AccessExclusiveLock ;
 int Assert (int) ;
 int DEBUG4 ;
 int LOG ;
 int LockRelease (int *,int ,int) ;
 int SET_LOCKTAG_RELATION (int ,int ,int ) ;
 int elog (int ,char*,int ,int ,int ) ;
 scalar_t__ linitial (int *) ;
 int * list_delete_first (int *) ;
 int pfree (TYPE_1__*) ;
 int trace_recovery (int ) ;

__attribute__((used)) static void
StandbyReleaseLockList(List *locks)
{
 while (locks)
 {
  xl_standby_lock *lock = (xl_standby_lock *) linitial(locks);
  LOCKTAG locktag;

  elog(trace_recovery(DEBUG4),
    "releasing recovery lock: xid %u db %u rel %u",
    lock->xid, lock->dbOid, lock->relOid);
  SET_LOCKTAG_RELATION(locktag, lock->dbOid, lock->relOid);
  if (!LockRelease(&locktag, AccessExclusiveLock, 1))
  {
   elog(LOG,
     "RecoveryLockLists contains entry for lock no longer recorded by lock manager: xid %u database %u relation %u",
     lock->xid, lock->dbOid, lock->relOid);
   Assert(0);
  }
  pfree(lock);
  locks = list_delete_first(locks);
 }
}
