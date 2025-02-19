
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bgw ;
struct TYPE_4__ {int bgw_flags; int bgw_restart_time; scalar_t__ bgw_main_arg; scalar_t__ bgw_notify_pid; int bgw_type; int bgw_name; int bgw_function_name; int bgw_library_name; int bgw_start_time; } ;
typedef scalar_t__ Datum ;
typedef TYPE_1__ BackgroundWorker ;


 int BGWORKER_BACKEND_DATABASE_CONNECTION ;
 int BGWORKER_SHMEM_ACCESS ;
 int BGW_MAXLEN ;
 int BgWorkerStart_RecoveryFinished ;
 int RegisterBackgroundWorker (TYPE_1__*) ;
 scalar_t__ max_logical_replication_workers ;
 int memset (TYPE_1__*,int ,int) ;
 int snprintf (int ,int ,char*) ;

void
ApplyLauncherRegister(void)
{
 BackgroundWorker bgw;

 if (max_logical_replication_workers == 0)
  return;

 memset(&bgw, 0, sizeof(bgw));
 bgw.bgw_flags = BGWORKER_SHMEM_ACCESS |
  BGWORKER_BACKEND_DATABASE_CONNECTION;
 bgw.bgw_start_time = BgWorkerStart_RecoveryFinished;
 snprintf(bgw.bgw_library_name, BGW_MAXLEN, "postgres");
 snprintf(bgw.bgw_function_name, BGW_MAXLEN, "ApplyLauncherMain");
 snprintf(bgw.bgw_name, BGW_MAXLEN,
    "logical replication launcher");
 snprintf(bgw.bgw_type, BGW_MAXLEN,
    "logical replication launcher");
 bgw.bgw_restart_time = 5;
 bgw.bgw_notify_pid = 0;
 bgw.bgw_main_arg = (Datum) 0;

 RegisterBackgroundWorker(&bgw);
}
