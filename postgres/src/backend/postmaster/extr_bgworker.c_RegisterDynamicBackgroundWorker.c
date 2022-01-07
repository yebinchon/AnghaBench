
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_13__ {scalar_t__ parallel_register_count; scalar_t__ parallel_terminate_count; int total_slots; TYPE_1__* slot; } ;
struct TYPE_12__ {int bgw_flags; } ;
struct TYPE_11__ {int slot; scalar_t__ generation; } ;
struct TYPE_10__ {int in_use; int terminate; scalar_t__ generation; int pid; int worker; } ;
typedef TYPE_1__ BackgroundWorkerSlot ;
typedef TYPE_2__ BackgroundWorkerHandle ;
typedef TYPE_3__ BackgroundWorker ;


 int Assert (int) ;
 int BGWORKER_CLASS_PARALLEL ;
 TYPE_9__* BackgroundWorkerData ;
 int BackgroundWorkerLock ;
 int ERROR ;
 int InvalidPid ;
 int IsUnderPostmaster ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 scalar_t__ MAX_PARALLEL_WORKER_LIMIT ;
 int PMSIGNAL_BACKGROUND_WORKER_CHANGE ;
 int SanityCheckBackgroundWorker (TYPE_3__*,int ) ;
 int SendPostmasterSignal (int ) ;
 scalar_t__ max_parallel_workers ;
 int memcpy (int *,TYPE_3__*,int) ;
 TYPE_2__* palloc (int) ;
 int pg_write_barrier () ;

bool
RegisterDynamicBackgroundWorker(BackgroundWorker *worker,
        BackgroundWorkerHandle **handle)
{
 int slotno;
 bool success = 0;
 bool parallel;
 uint64 generation = 0;
 if (!IsUnderPostmaster)
  return 0;

 if (!SanityCheckBackgroundWorker(worker, ERROR))
  return 0;

 parallel = (worker->bgw_flags & BGWORKER_CLASS_PARALLEL) != 0;

 LWLockAcquire(BackgroundWorkerLock, LW_EXCLUSIVE);
 if (parallel && (BackgroundWorkerData->parallel_register_count -
      BackgroundWorkerData->parallel_terminate_count) >=
  max_parallel_workers)
 {
  Assert(BackgroundWorkerData->parallel_register_count -
      BackgroundWorkerData->parallel_terminate_count <=
      MAX_PARALLEL_WORKER_LIMIT);
  LWLockRelease(BackgroundWorkerLock);
  return 0;
 }




 for (slotno = 0; slotno < BackgroundWorkerData->total_slots; ++slotno)
 {
  BackgroundWorkerSlot *slot = &BackgroundWorkerData->slot[slotno];

  if (!slot->in_use)
  {
   memcpy(&slot->worker, worker, sizeof(BackgroundWorker));
   slot->pid = InvalidPid;
   slot->generation++;
   slot->terminate = 0;
   generation = slot->generation;
   if (parallel)
    BackgroundWorkerData->parallel_register_count++;





   pg_write_barrier();

   slot->in_use = 1;
   success = 1;
   break;
  }
 }

 LWLockRelease(BackgroundWorkerLock);


 if (success)
  SendPostmasterSignal(PMSIGNAL_BACKGROUND_WORKER_CHANGE);




 if (success && handle)
 {
  *handle = palloc(sizeof(BackgroundWorkerHandle));
  (*handle)->slot = slotno;
  (*handle)->generation = generation;
 }

 return success;
}
