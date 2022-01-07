
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int relOid; int dbOid; int xid; } ;
typedef TYPE_3__ xl_standby_lock ;
typedef int TransactionId ;
struct TYPE_18__ {TYPE_5__* allPgXact; } ;
struct TYPE_12__ {scalar_t__ locktag_type; int locktag_field2; int locktag_field1; } ;
struct TYPE_17__ {TYPE_2__ tag; } ;
struct TYPE_16__ {size_t pgprocno; } ;
struct TYPE_15__ {int xid; } ;
struct TYPE_11__ {TYPE_7__* myLock; TYPE_6__* myProc; } ;
struct TYPE_14__ {int holdMask; TYPE_1__ tag; } ;
typedef TYPE_4__ PROCLOCK ;
typedef TYPE_5__ PGXACT ;
typedef TYPE_6__ PGPROC ;
typedef TYPE_7__ LOCK ;
typedef int HASH_SEQ_STATUS ;


 int AccessExclusiveLock ;
 int Assert (int) ;
 int LOCKBIT_ON (int ) ;
 scalar_t__ LOCKTAG_RELATION ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int LockHashPartitionLockByIndex (int) ;
 int LockMethodProcLockHash ;
 int NUM_LOCK_PARTITIONS ;
 TYPE_9__* ProcGlobal ;
 int TransactionIdIsValid (int ) ;
 int hash_get_num_entries (int ) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 TYPE_3__* palloc (int) ;

xl_standby_lock *
GetRunningTransactionLocks(int *nlocks)
{
 xl_standby_lock *accessExclusiveLocks;
 PROCLOCK *proclock;
 HASH_SEQ_STATUS seqstat;
 int i;
 int index;
 int els;






 for (i = 0; i < NUM_LOCK_PARTITIONS; i++)
  LWLockAcquire(LockHashPartitionLockByIndex(i), LW_SHARED);


 els = hash_get_num_entries(LockMethodProcLockHash);





 accessExclusiveLocks = palloc(els * sizeof(xl_standby_lock));


 hash_seq_init(&seqstat, LockMethodProcLockHash);
 index = 0;
 while ((proclock = (PROCLOCK *) hash_seq_search(&seqstat)))
 {

  if ((proclock->holdMask & LOCKBIT_ON(AccessExclusiveLock)) &&
   proclock->tag.myLock->tag.locktag_type == LOCKTAG_RELATION)
  {
   PGPROC *proc = proclock->tag.myProc;
   PGXACT *pgxact = &ProcGlobal->allPgXact[proc->pgprocno];
   LOCK *lock = proclock->tag.myLock;
   TransactionId xid = pgxact->xid;







   if (!TransactionIdIsValid(xid))
    continue;

   accessExclusiveLocks[index].xid = xid;
   accessExclusiveLocks[index].dbOid = lock->tag.locktag_field1;
   accessExclusiveLocks[index].relOid = lock->tag.locktag_field2;

   index++;
  }
 }

 Assert(index <= els);
 for (i = NUM_LOCK_PARTITIONS; --i >= 0;)
  LWLockRelease(LockHashPartitionLockByIndex(i));

 *nlocks = index;
 return accessExclusiveLocks;
}
