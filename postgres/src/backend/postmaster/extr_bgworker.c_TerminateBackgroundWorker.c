
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* slot; } ;
struct TYPE_6__ {size_t slot; scalar_t__ generation; } ;
struct TYPE_5__ {scalar_t__ generation; int terminate; } ;
typedef TYPE_1__ BackgroundWorkerSlot ;
typedef TYPE_2__ BackgroundWorkerHandle ;


 int Assert (int) ;
 TYPE_4__* BackgroundWorkerData ;
 int BackgroundWorkerLock ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int PMSIGNAL_BACKGROUND_WORKER_CHANGE ;
 int SendPostmasterSignal (int ) ;
 size_t max_worker_processes ;

void
TerminateBackgroundWorker(BackgroundWorkerHandle *handle)
{
 BackgroundWorkerSlot *slot;
 bool signal_postmaster = 0;

 Assert(handle->slot < max_worker_processes);
 slot = &BackgroundWorkerData->slot[handle->slot];


 LWLockAcquire(BackgroundWorkerLock, LW_EXCLUSIVE);
 if (handle->generation == slot->generation)
 {
  slot->terminate = 1;
  signal_postmaster = 1;
 }
 LWLockRelease(BackgroundWorkerLock);


 if (signal_postmaster)
  SendPostmasterSignal(PMSIGNAL_BACKGROUND_WORKER_CHANGE);
}
