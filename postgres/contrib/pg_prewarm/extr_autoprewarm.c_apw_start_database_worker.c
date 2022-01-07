
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bgw_flags; int bgw_notify_pid; int bgw_type; int bgw_name; int bgw_function_name; int bgw_library_name; int bgw_restart_time; int bgw_start_time; } ;
typedef int BackgroundWorkerHandle ;
typedef TYPE_1__ BackgroundWorker ;


 int BGWORKER_BACKEND_DATABASE_CONNECTION ;
 int BGWORKER_SHMEM_ACCESS ;
 int BGW_NEVER_RESTART ;
 int BgWorkerStart_ConsistentState ;
 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int ERROR ;
 int MemSet (TYPE_1__*,int ,int) ;
 int MyProcPid ;
 int RegisterDynamicBackgroundWorker (TYPE_1__*,int **) ;
 int WaitForBackgroundWorkerShutdown (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
apw_start_database_worker(void)
{
 BackgroundWorker worker;
 BackgroundWorkerHandle *handle;

 MemSet(&worker, 0, sizeof(BackgroundWorker));
 worker.bgw_flags =
  BGWORKER_SHMEM_ACCESS | BGWORKER_BACKEND_DATABASE_CONNECTION;
 worker.bgw_start_time = BgWorkerStart_ConsistentState;
 worker.bgw_restart_time = BGW_NEVER_RESTART;
 strcpy(worker.bgw_library_name, "pg_prewarm");
 strcpy(worker.bgw_function_name, "autoprewarm_database_main");
 strcpy(worker.bgw_name, "autoprewarm worker");
 strcpy(worker.bgw_type, "autoprewarm worker");


 worker.bgw_notify_pid = MyProcPid;

 if (!RegisterDynamicBackgroundWorker(&worker, &handle))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("registering dynamic bgworker autoprewarm failed"),
     errhint("Consider increasing configuration parameter \"max_worker_processes\".")));





 WaitForBackgroundWorkerShutdown(handle);
}
