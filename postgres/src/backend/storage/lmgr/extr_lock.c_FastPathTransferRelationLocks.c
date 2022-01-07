
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_18__ {size_t allProcCount; TYPE_3__* allProcs; } ;
struct TYPE_17__ {scalar_t__ locktag_field2; scalar_t__ locktag_field1; } ;
struct TYPE_16__ {scalar_t__ databaseId; scalar_t__* fpRelId; int backendLock; } ;
struct TYPE_14__ {int myLock; } ;
struct TYPE_15__ {TYPE_1__ tag; } ;
typedef TYPE_2__ PROCLOCK ;
typedef TYPE_3__ PGPROC ;
typedef scalar_t__ Oid ;
typedef int LockMethod ;
typedef int LWLock ;
typedef TYPE_4__ LOCKTAG ;


 size_t FAST_PATH_BITS_PER_SLOT ;
 int FAST_PATH_CHECK_LOCKMODE (TYPE_3__*,size_t,size_t) ;
 int FAST_PATH_CLEAR_LOCKMODE (TYPE_3__*,size_t,size_t) ;
 scalar_t__ FAST_PATH_GET_BITS (TYPE_3__*,size_t) ;
 size_t FAST_PATH_LOCKNUMBER_OFFSET ;
 size_t FP_LOCK_SLOTS_PER_BACKEND ;
 int GrantLock (int ,TYPE_2__*,size_t) ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int * LockHashPartitionLock (size_t) ;
 TYPE_8__* ProcGlobal ;
 TYPE_2__* SetupLockInTable (int ,TYPE_3__*,TYPE_4__ const*,size_t,size_t) ;

__attribute__((used)) static bool
FastPathTransferRelationLocks(LockMethod lockMethodTable, const LOCKTAG *locktag,
         uint32 hashcode)
{
 LWLock *partitionLock = LockHashPartitionLock(hashcode);
 Oid relid = locktag->locktag_field2;
 uint32 i;







 for (i = 0; i < ProcGlobal->allProcCount; i++)
 {
  PGPROC *proc = &ProcGlobal->allProcs[i];
  uint32 f;

  LWLockAcquire(&proc->backendLock, LW_EXCLUSIVE);
  if (proc->databaseId != locktag->locktag_field1)
  {
   LWLockRelease(&proc->backendLock);
   continue;
  }

  for (f = 0; f < FP_LOCK_SLOTS_PER_BACKEND; f++)
  {
   uint32 lockmode;


   if (relid != proc->fpRelId[f] || FAST_PATH_GET_BITS(proc, f) == 0)
    continue;


   LWLockAcquire(partitionLock, LW_EXCLUSIVE);
   for (lockmode = FAST_PATH_LOCKNUMBER_OFFSET;
     lockmode < FAST_PATH_LOCKNUMBER_OFFSET + FAST_PATH_BITS_PER_SLOT;
     ++lockmode)
   {
    PROCLOCK *proclock;

    if (!FAST_PATH_CHECK_LOCKMODE(proc, f, lockmode))
     continue;
    proclock = SetupLockInTable(lockMethodTable, proc, locktag,
           hashcode, lockmode);
    if (!proclock)
    {
     LWLockRelease(partitionLock);
     LWLockRelease(&proc->backendLock);
     return 0;
    }
    GrantLock(proclock->tag.myLock, proclock, lockmode);
    FAST_PATH_CLEAR_LOCKMODE(proc, f, lockmode);
   }
   LWLockRelease(partitionLock);


   break;
  }
  LWLockRelease(&proc->backendLock);
 }
 return 1;
}
