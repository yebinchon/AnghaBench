
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_5__ {int bgw_notify_pid; int bgw_type; int bgw_name; int bgw_function_name; int bgw_library_name; int bgw_start_time; int bgw_flags; } ;
typedef scalar_t__ BgwHandleStatus ;
typedef int BackgroundWorkerHandle ;
typedef TYPE_1__ BackgroundWorker ;


 scalar_t__ BGWH_STARTED ;
 int BGWORKER_SHMEM_ACCESS ;
 int BgWorkerStart_ConsistentState ;
 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int ERROR ;
 int MemSet (TYPE_1__*,int ,int) ;
 int MyProcPid ;
 int RegisterBackgroundWorker (TYPE_1__*) ;
 int RegisterDynamicBackgroundWorker (TYPE_1__*,int **) ;
 scalar_t__ WaitForBackgroundWorkerStartup (int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 scalar_t__ process_shared_preload_libraries_in_progress ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
apw_start_master_worker(void)
{
 BackgroundWorker worker;
 BackgroundWorkerHandle *handle;
 BgwHandleStatus status;
 pid_t pid;

 MemSet(&worker, 0, sizeof(BackgroundWorker));
 worker.bgw_flags = BGWORKER_SHMEM_ACCESS;
 worker.bgw_start_time = BgWorkerStart_ConsistentState;
 strcpy(worker.bgw_library_name, "pg_prewarm");
 strcpy(worker.bgw_function_name, "autoprewarm_main");
 strcpy(worker.bgw_name, "autoprewarm master");
 strcpy(worker.bgw_type, "autoprewarm master");

 if (process_shared_preload_libraries_in_progress)
 {
  RegisterBackgroundWorker(&worker);
  return;
 }


 worker.bgw_notify_pid = MyProcPid;

 if (!RegisterDynamicBackgroundWorker(&worker, &handle))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("could not register background process"),
     errhint("You may need to increase max_worker_processes.")));

 status = WaitForBackgroundWorkerStartup(handle, &pid);
 if (status != BGWH_STARTED)
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("could not start background process"),
     errhint("More details may be available in the server log.")));
}
