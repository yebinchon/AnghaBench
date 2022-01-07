
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int total_slots; int parallel_terminate_count; TYPE_4__* slot; } ;
struct TYPE_9__ {int bgw_notify_pid; int bgw_flags; int bgw_extra; int bgw_main_arg; int bgw_restart_time; int bgw_start_time; int bgw_function_name; int bgw_library_name; int bgw_type; int bgw_name; } ;
struct TYPE_12__ {int in_use; TYPE_1__ worker; scalar_t__ pid; scalar_t__ terminate; } ;
struct TYPE_10__ {int bgw_flags; int bgw_notify_pid; int bgw_name; int bgw_extra; int bgw_main_arg; int bgw_restart_time; int bgw_start_time; int bgw_function_name; int bgw_library_name; int bgw_type; } ;
struct TYPE_11__ {int rw_terminate; scalar_t__ rw_pid; int rw_shmem_slot; int rw_lnode; TYPE_2__ rw_worker; scalar_t__ rw_crashed_at; scalar_t__ rw_child_slot; int * rw_backend; } ;
typedef TYPE_3__ RegisteredBgWorker ;
typedef TYPE_4__ BackgroundWorkerSlot ;


 int BGWORKER_CLASS_PARALLEL ;
 int BGW_EXTRALEN ;
 int BGW_MAXLEN ;
 TYPE_8__* BackgroundWorkerData ;
 int BackgroundWorkerList ;
 int DEBUG1 ;
 int ERRCODE_OUT_OF_MEMORY ;
 TYPE_3__* FindRegisteredWorkerBySlotNumber (int) ;
 int LOG ;
 int PostmasterMarkPIDForWorkerNotify (int) ;
 int ReportBackgroundWorkerPID (TYPE_3__*) ;
 int SIGTERM ;
 int SIGUSR1 ;
 int ascii_safe_strlcpy (int ,int ,int ) ;
 int elog (int ,char*,long,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int kill (int,int ) ;
 TYPE_3__* malloc (int) ;
 int max_worker_processes ;
 int memcpy (int ,int ,int ) ;
 int pg_memory_barrier () ;
 int pg_read_barrier () ;
 int slist_push_head (int *,int *) ;

void
BackgroundWorkerStateChange(void)
{
 int slotno;
 if (max_worker_processes != BackgroundWorkerData->total_slots)
 {
  elog(LOG,
    "inconsistent background worker state (max_worker_processes=%d, total_slots=%d",
    max_worker_processes,
    BackgroundWorkerData->total_slots);
  return;
 }





 for (slotno = 0; slotno < max_worker_processes; ++slotno)
 {
  BackgroundWorkerSlot *slot = &BackgroundWorkerData->slot[slotno];
  RegisteredBgWorker *rw;

  if (!slot->in_use)
   continue;





  pg_read_barrier();


  rw = FindRegisteredWorkerBySlotNumber(slotno);
  if (rw != ((void*)0))
  {




   if (slot->terminate && !rw->rw_terminate)
   {
    rw->rw_terminate = 1;
    if (rw->rw_pid != 0)
     kill(rw->rw_pid, SIGTERM);
    else
    {

     ReportBackgroundWorkerPID(rw);
    }
   }
   continue;
  }
  if (slot->terminate)
  {
   int notify_pid;






   notify_pid = slot->worker.bgw_notify_pid;
   if ((slot->worker.bgw_flags & BGWORKER_CLASS_PARALLEL) != 0)
    BackgroundWorkerData->parallel_terminate_count++;
   pg_memory_barrier();
   slot->pid = 0;
   slot->in_use = 0;
   if (notify_pid != 0)
    kill(notify_pid, SIGUSR1);

   continue;
  }




  rw = malloc(sizeof(RegisteredBgWorker));
  if (rw == ((void*)0))
  {
   ereport(LOG,
     (errcode(ERRCODE_OUT_OF_MEMORY),
      errmsg("out of memory")));
   return;
  }





  ascii_safe_strlcpy(rw->rw_worker.bgw_name,
         slot->worker.bgw_name, BGW_MAXLEN);
  ascii_safe_strlcpy(rw->rw_worker.bgw_type,
         slot->worker.bgw_type, BGW_MAXLEN);
  ascii_safe_strlcpy(rw->rw_worker.bgw_library_name,
         slot->worker.bgw_library_name, BGW_MAXLEN);
  ascii_safe_strlcpy(rw->rw_worker.bgw_function_name,
         slot->worker.bgw_function_name, BGW_MAXLEN);
  rw->rw_worker.bgw_flags = slot->worker.bgw_flags;
  rw->rw_worker.bgw_start_time = slot->worker.bgw_start_time;
  rw->rw_worker.bgw_restart_time = slot->worker.bgw_restart_time;
  rw->rw_worker.bgw_main_arg = slot->worker.bgw_main_arg;
  memcpy(rw->rw_worker.bgw_extra, slot->worker.bgw_extra, BGW_EXTRALEN);
  rw->rw_worker.bgw_notify_pid = slot->worker.bgw_notify_pid;
  if (!PostmasterMarkPIDForWorkerNotify(rw->rw_worker.bgw_notify_pid))
  {
   elog(DEBUG1, "worker notification PID %lu is not valid",
     (long) rw->rw_worker.bgw_notify_pid);
   rw->rw_worker.bgw_notify_pid = 0;
  }


  rw->rw_backend = ((void*)0);
  rw->rw_pid = 0;
  rw->rw_child_slot = 0;
  rw->rw_crashed_at = 0;
  rw->rw_shmem_slot = slotno;
  rw->rw_terminate = 0;


  ereport(DEBUG1,
    (errmsg("registering background worker \"%s\"",
      rw->rw_worker.bgw_name)));

  slist_push_head(&BackgroundWorkerList, &rw->rw_lnode);
 }
}
