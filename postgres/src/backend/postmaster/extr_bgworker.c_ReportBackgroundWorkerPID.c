
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* slot; } ;
struct TYPE_8__ {int pid; } ;
struct TYPE_6__ {scalar_t__ bgw_notify_pid; } ;
struct TYPE_7__ {size_t rw_shmem_slot; TYPE_1__ rw_worker; int rw_pid; } ;
typedef TYPE_2__ RegisteredBgWorker ;
typedef TYPE_3__ BackgroundWorkerSlot ;


 int Assert (int) ;
 TYPE_5__* BackgroundWorkerData ;
 int SIGUSR1 ;
 int kill (scalar_t__,int ) ;
 size_t max_worker_processes ;

void
ReportBackgroundWorkerPID(RegisteredBgWorker *rw)
{
 BackgroundWorkerSlot *slot;

 Assert(rw->rw_shmem_slot < max_worker_processes);
 slot = &BackgroundWorkerData->slot[rw->rw_shmem_slot];
 slot->pid = rw->rw_pid;

 if (rw->rw_worker.bgw_notify_pid != 0)
  kill(rw->rw_worker.bgw_notify_pid, SIGUSR1);
}
