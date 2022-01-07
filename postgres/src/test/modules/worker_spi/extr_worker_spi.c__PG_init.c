
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int worker ;
struct TYPE_4__ {int bgw_flags; int bgw_main_arg; int bgw_type; int bgw_name; scalar_t__ bgw_notify_pid; int bgw_function_name; int bgw_library_name; int bgw_restart_time; int bgw_start_time; } ;
typedef TYPE_1__ BackgroundWorker ;


 int BGWORKER_BACKEND_DATABASE_CONNECTION ;
 int BGWORKER_SHMEM_ACCESS ;
 int BGW_MAXLEN ;
 int BGW_NEVER_RESTART ;
 int BgWorkerStart_RecoveryFinished ;
 int DefineCustomIntVariable (char*,char*,int *,unsigned int*,int,int,int,int ,int ,int *,int *,int *) ;
 int DefineCustomStringVariable (char*,char*,int *,int *,char*,int ,int ,int *,int *,int *) ;
 int INT_MAX ;
 int Int32GetDatum (unsigned int) ;
 int PGC_POSTMASTER ;
 int PGC_SIGHUP ;
 int RegisterBackgroundWorker (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int process_shared_preload_libraries_in_progress ;
 int snprintf (int ,int ,char*,...) ;
 int sprintf (int ,char*) ;
 int worker_spi_database ;
 unsigned int worker_spi_naptime ;
 unsigned int worker_spi_total_workers ;

void
_PG_init(void)
{
 BackgroundWorker worker;
 unsigned int i;


 DefineCustomIntVariable("worker_spi.naptime",
       "Duration between each check (in seconds).",
       ((void*)0),
       &worker_spi_naptime,
       10,
       1,
       INT_MAX,
       PGC_SIGHUP,
       0,
       ((void*)0),
       ((void*)0),
       ((void*)0));

 if (!process_shared_preload_libraries_in_progress)
  return;

 DefineCustomIntVariable("worker_spi.total_workers",
       "Number of workers.",
       ((void*)0),
       &worker_spi_total_workers,
       2,
       1,
       100,
       PGC_POSTMASTER,
       0,
       ((void*)0),
       ((void*)0),
       ((void*)0));

 DefineCustomStringVariable("worker_spi.database",
          "Database to connect to.",
          ((void*)0),
          &worker_spi_database,
          "postgres",
          PGC_POSTMASTER,
          0,
          ((void*)0), ((void*)0), ((void*)0));


 memset(&worker, 0, sizeof(worker));
 worker.bgw_flags = BGWORKER_SHMEM_ACCESS |
  BGWORKER_BACKEND_DATABASE_CONNECTION;
 worker.bgw_start_time = BgWorkerStart_RecoveryFinished;
 worker.bgw_restart_time = BGW_NEVER_RESTART;
 sprintf(worker.bgw_library_name, "worker_spi");
 sprintf(worker.bgw_function_name, "worker_spi_main");
 worker.bgw_notify_pid = 0;




 for (i = 1; i <= worker_spi_total_workers; i++)
 {
  snprintf(worker.bgw_name, BGW_MAXLEN, "worker_spi worker %d", i);
  snprintf(worker.bgw_type, BGW_MAXLEN, "worker_spi");
  worker.bgw_main_arg = Int32GetDatum(i);

  RegisterBackgroundWorker(&worker);
 }
}
