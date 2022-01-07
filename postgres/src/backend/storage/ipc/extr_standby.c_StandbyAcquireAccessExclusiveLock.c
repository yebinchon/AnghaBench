
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* relOid; void* dbOid; void* xid; } ;
typedef TYPE_1__ xl_standby_lock ;
typedef void* TransactionId ;
struct TYPE_7__ {int locks; void* xid; } ;
typedef TYPE_2__ RecoveryLockListsEntry ;
typedef void* Oid ;
typedef int LOCKTAG ;


 int AccessExclusiveLock ;
 int Assert (int ) ;
 int DEBUG4 ;
 int HASH_ENTER ;
 int LockAcquire (int *,int ,int,int) ;
 int NIL ;
 int OidIsValid (void*) ;
 int RecoveryLockLists ;
 int SET_LOCKTAG_RELATION (int ,void*,void*) ;
 scalar_t__ TransactionIdDidAbort (void*) ;
 scalar_t__ TransactionIdDidCommit (void*) ;
 int TransactionIdIsValid (void*) ;
 int elog (int ,char*,void*,void*) ;
 TYPE_2__* hash_search (int ,void**,int ,int*) ;
 int lappend (int ,TYPE_1__*) ;
 TYPE_1__* palloc (int) ;
 int trace_recovery (int ) ;

void
StandbyAcquireAccessExclusiveLock(TransactionId xid, Oid dbOid, Oid relOid)
{
 RecoveryLockListsEntry *entry;
 xl_standby_lock *newlock;
 LOCKTAG locktag;
 bool found;


 if (!TransactionIdIsValid(xid) ||
  TransactionIdDidCommit(xid) ||
  TransactionIdDidAbort(xid))
  return;

 elog(trace_recovery(DEBUG4),
   "adding recovery lock: db %u rel %u", dbOid, relOid);


 Assert(OidIsValid(relOid));


 entry = hash_search(RecoveryLockLists, &xid, HASH_ENTER, &found);
 if (!found)
 {
  entry->xid = xid;
  entry->locks = NIL;
 }

 newlock = palloc(sizeof(xl_standby_lock));
 newlock->xid = xid;
 newlock->dbOid = dbOid;
 newlock->relOid = relOid;
 entry->locks = lappend(entry->locks, newlock);

 SET_LOCKTAG_RELATION(locktag, newlock->dbOid, newlock->relOid);

 (void) LockAcquire(&locktag, AccessExclusiveLock, 1, 0);
}
