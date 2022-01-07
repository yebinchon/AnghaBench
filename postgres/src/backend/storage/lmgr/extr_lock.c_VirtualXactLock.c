
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_13__ {scalar_t__ backendId; scalar_t__ localTransactionId; } ;
typedef TYPE_2__ VirtualTransactionId ;
struct TYPE_15__ {scalar_t__ backendId; scalar_t__ fpLocalTransactionId; int fpVXIDLock; int backendLock; } ;
struct TYPE_12__ {int myLock; } ;
struct TYPE_14__ {TYPE_1__ tag; } ;
typedef TYPE_3__ PROCLOCK ;
typedef TYPE_4__ PGPROC ;
typedef int LWLock ;
typedef int LOCKTAG ;


 int Assert (int ) ;
 TYPE_4__* BackendIdGetProc (scalar_t__) ;
 size_t DEFAULT_LOCKMETHOD ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int ExclusiveLock ;
 int GrantLock (int ,TYPE_3__*,int ) ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int LockAcquire (int *,int ,int,int) ;
 int * LockHashPartitionLock (int ) ;
 int * LockMethods ;
 int LockRelease (int *,int ,int) ;
 int LockTagHashCode (int *) ;
 int SET_LOCKTAG_VIRTUALTRANSACTION (int ,TYPE_2__) ;
 TYPE_3__* SetupLockInTable (int ,TYPE_4__*,int *,int ,int ) ;
 int ShareLock ;
 int VirtualTransactionIdIsValid (TYPE_2__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

bool
VirtualXactLock(VirtualTransactionId vxid, bool wait)
{
 LOCKTAG tag;
 PGPROC *proc;

 Assert(VirtualTransactionIdIsValid(vxid));

 SET_LOCKTAG_VIRTUALTRANSACTION(tag, vxid);
 proc = BackendIdGetProc(vxid.backendId);
 if (proc == ((void*)0))
  return 1;






 LWLockAcquire(&proc->backendLock, LW_EXCLUSIVE);


 if (proc->backendId != vxid.backendId
  || proc->fpLocalTransactionId != vxid.localTransactionId)
 {
  LWLockRelease(&proc->backendLock);
  return 1;
 }





 if (!wait)
 {
  LWLockRelease(&proc->backendLock);
  return 0;
 }






 if (proc->fpVXIDLock)
 {
  PROCLOCK *proclock;
  uint32 hashcode;
  LWLock *partitionLock;

  hashcode = LockTagHashCode(&tag);

  partitionLock = LockHashPartitionLock(hashcode);
  LWLockAcquire(partitionLock, LW_EXCLUSIVE);

  proclock = SetupLockInTable(LockMethods[DEFAULT_LOCKMETHOD], proc,
         &tag, hashcode, ExclusiveLock);
  if (!proclock)
  {
   LWLockRelease(partitionLock);
   LWLockRelease(&proc->backendLock);
   ereport(ERROR,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of shared memory"),
      errhint("You might need to increase max_locks_per_transaction.")));
  }
  GrantLock(proclock->tag.myLock, proclock, ExclusiveLock);

  LWLockRelease(partitionLock);

  proc->fpVXIDLock = 0;
 }


 LWLockRelease(&proc->backendLock);


 (void) LockAcquire(&tag, ShareLock, 0, 0);

 LockRelease(&tag, ShareLock, 0);
 return 1;
}
