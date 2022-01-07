
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef scalar_t__ uint32 ;
struct TYPE_17__ {int localTransactionId; int backendId; } ;
typedef TYPE_3__ VirtualTransactionId ;
struct TYPE_22__ {int tag; } ;
struct TYPE_21__ {int nelements; TYPE_6__* locks; } ;
struct TYPE_20__ {int fastpath; int leaderPid; int pid; int lxid; int backend; void* waitLockMode; scalar_t__ holdMask; int locktag; } ;
struct TYPE_19__ {int pid; int lxid; int backendId; void* waitLockMode; TYPE_8__* waitLock; int backendLock; int fpLocalTransactionId; scalar_t__ fpVXIDLock; int * fpRelId; int databaseId; } ;
struct TYPE_16__ {TYPE_8__* myLock; TYPE_5__* myProc; } ;
struct TYPE_18__ {TYPE_1__* groupLeader; TYPE_2__ tag; scalar_t__ holdMask; } ;
struct TYPE_15__ {int pid; } ;
struct TYPE_14__ {int allProcCount; TYPE_5__* allProcs; } ;
typedef TYPE_4__ PROCLOCK ;
typedef TYPE_5__ PGPROC ;
typedef TYPE_6__ LockInstanceData ;
typedef TYPE_7__ LockData ;
typedef int LOCKTAG ;
typedef TYPE_8__ LOCK ;
typedef int HASH_SEQ_STATUS ;


 int Assert (int) ;
 int ExclusiveLock ;
 scalar_t__ FAST_PATH_GET_BITS (TYPE_5__*,scalar_t__) ;
 scalar_t__ FAST_PATH_LOCKNUMBER_OFFSET ;
 scalar_t__ FP_LOCK_SLOTS_PER_BACKEND ;
 scalar_t__ LOCKBIT_ON (int ) ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_SHARED ;
 int * LockHashPartitionLockByIndex (int) ;
 int LockMethodProcLockHash ;
 int MaxBackends ;
 int NUM_LOCK_PARTITIONS ;
 void* NoLock ;
 TYPE_11__* ProcGlobal ;
 int SET_LOCKTAG_RELATION (int ,int ,int ) ;
 int SET_LOCKTAG_VIRTUALTRANSACTION (int ,TYPE_3__) ;
 int hash_get_num_entries (int ) ;
 int hash_seq_init (int *,int ) ;
 scalar_t__ hash_seq_search (int *) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ palloc (int) ;
 scalar_t__ repalloc (TYPE_6__*,int) ;

LockData *
GetLockStatusData(void)
{
 LockData *data;
 PROCLOCK *proclock;
 HASH_SEQ_STATUS seqstat;
 int els;
 int el;
 int i;

 data = (LockData *) palloc(sizeof(LockData));


 els = MaxBackends;
 el = 0;
 data->locks = (LockInstanceData *) palloc(sizeof(LockInstanceData) * els);
 for (i = 0; i < ProcGlobal->allProcCount; ++i)
 {
  PGPROC *proc = &ProcGlobal->allProcs[i];
  uint32 f;

  LWLockAcquire(&proc->backendLock, LW_SHARED);

  for (f = 0; f < FP_LOCK_SLOTS_PER_BACKEND; ++f)
  {
   LockInstanceData *instance;
   uint32 lockbits = FAST_PATH_GET_BITS(proc, f);


   if (!lockbits)
    continue;

   if (el >= els)
   {
    els += MaxBackends;
    data->locks = (LockInstanceData *)
     repalloc(data->locks, sizeof(LockInstanceData) * els);
   }

   instance = &data->locks[el];
   SET_LOCKTAG_RELATION(instance->locktag, proc->databaseId,
         proc->fpRelId[f]);
   instance->holdMask = lockbits << FAST_PATH_LOCKNUMBER_OFFSET;
   instance->waitLockMode = NoLock;
   instance->backend = proc->backendId;
   instance->lxid = proc->lxid;
   instance->pid = proc->pid;
   instance->leaderPid = proc->pid;
   instance->fastpath = 1;

   el++;
  }

  if (proc->fpVXIDLock)
  {
   VirtualTransactionId vxid;
   LockInstanceData *instance;

   if (el >= els)
   {
    els += MaxBackends;
    data->locks = (LockInstanceData *)
     repalloc(data->locks, sizeof(LockInstanceData) * els);
   }

   vxid.backendId = proc->backendId;
   vxid.localTransactionId = proc->fpLocalTransactionId;

   instance = &data->locks[el];
   SET_LOCKTAG_VIRTUALTRANSACTION(instance->locktag, vxid);
   instance->holdMask = LOCKBIT_ON(ExclusiveLock);
   instance->waitLockMode = NoLock;
   instance->backend = proc->backendId;
   instance->lxid = proc->lxid;
   instance->pid = proc->pid;
   instance->leaderPid = proc->pid;
   instance->fastpath = 1;

   el++;
  }

  LWLockRelease(&proc->backendLock);
 }
 for (i = 0; i < NUM_LOCK_PARTITIONS; i++)
  LWLockAcquire(LockHashPartitionLockByIndex(i), LW_SHARED);


 data->nelements = el + hash_get_num_entries(LockMethodProcLockHash);
 if (data->nelements > els)
 {
  els = data->nelements;
  data->locks = (LockInstanceData *)
   repalloc(data->locks, sizeof(LockInstanceData) * els);
 }


 hash_seq_init(&seqstat, LockMethodProcLockHash);

 while ((proclock = (PROCLOCK *) hash_seq_search(&seqstat)))
 {
  PGPROC *proc = proclock->tag.myProc;
  LOCK *lock = proclock->tag.myLock;
  LockInstanceData *instance = &data->locks[el];

  memcpy(&instance->locktag, &lock->tag, sizeof(LOCKTAG));
  instance->holdMask = proclock->holdMask;
  if (proc->waitLock == proclock->tag.myLock)
   instance->waitLockMode = proc->waitLockMode;
  else
   instance->waitLockMode = NoLock;
  instance->backend = proc->backendId;
  instance->lxid = proc->lxid;
  instance->pid = proc->pid;
  instance->leaderPid = proclock->groupLeader->pid;
  instance->fastpath = 0;

  el++;
 }
 for (i = NUM_LOCK_PARTITIONS; --i >= 0;)
  LWLockRelease(LockHashPartitionLockByIndex(i));

 Assert(el == data->nelements);

 return data;
}
