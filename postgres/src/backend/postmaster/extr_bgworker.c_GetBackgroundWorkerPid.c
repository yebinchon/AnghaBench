
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_7__ {TYPE_1__* slot; } ;
struct TYPE_6__ {size_t slot; scalar_t__ generation; } ;
struct TYPE_5__ {scalar_t__ generation; scalar_t__ pid; int in_use; } ;
typedef int BgwHandleStatus ;
typedef TYPE_1__ BackgroundWorkerSlot ;
typedef TYPE_2__ BackgroundWorkerHandle ;


 int Assert (int) ;
 int BGWH_NOT_YET_STARTED ;
 int BGWH_STARTED ;
 int BGWH_STOPPED ;
 TYPE_4__* BackgroundWorkerData ;
 int BackgroundWorkerLock ;
 scalar_t__ InvalidPid ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 size_t max_worker_processes ;

BgwHandleStatus
GetBackgroundWorkerPid(BackgroundWorkerHandle *handle, pid_t *pidp)
{
 BackgroundWorkerSlot *slot;
 pid_t pid;

 Assert(handle->slot < max_worker_processes);
 slot = &BackgroundWorkerData->slot[handle->slot];







 LWLockAcquire(BackgroundWorkerLock, LW_SHARED);
 if (handle->generation != slot->generation || !slot->in_use)
  pid = 0;
 else
  pid = slot->pid;


 LWLockRelease(BackgroundWorkerLock);

 if (pid == 0)
  return BGWH_STOPPED;
 else if (pid == InvalidPid)
  return BGWH_NOT_YET_STARTED;
 *pidp = pid;
 return BGWH_STARTED;
}
