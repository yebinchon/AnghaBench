
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ bgw_notify_pid; int bgw_name; int bgw_library_name; } ;
struct TYPE_6__ {int rw_terminate; int rw_lnode; scalar_t__ rw_crashed_at; scalar_t__ rw_child_slot; scalar_t__ rw_pid; int * rw_backend; TYPE_2__ rw_worker; } ;
typedef TYPE_1__ RegisteredBgWorker ;
typedef TYPE_2__ BackgroundWorker ;


 int BackgroundWorkerList ;
 int DEBUG1 ;
 int ERRCODE_CONFIGURATION_LIMIT_EXCEEDED ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_OUT_OF_MEMORY ;
 int IsUnderPostmaster ;
 int LOG ;
 int SanityCheckBackgroundWorker (TYPE_2__*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail_plural (char*,char*,int,int) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 TYPE_1__* malloc (int) ;
 int max_worker_processes ;
 int process_shared_preload_libraries_in_progress ;
 int slist_push_head (int *,int *) ;
 scalar_t__ strcmp (int ,char*) ;

void
RegisterBackgroundWorker(BackgroundWorker *worker)
{
 RegisteredBgWorker *rw;
 static int numworkers = 0;

 if (!IsUnderPostmaster)
  ereport(DEBUG1,
    (errmsg("registering background worker \"%s\"", worker->bgw_name)));

 if (!process_shared_preload_libraries_in_progress &&
  strcmp(worker->bgw_library_name, "postgres") != 0)
 {
  if (!IsUnderPostmaster)
   ereport(LOG,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("background worker \"%s\": must be registered in shared_preload_libraries",
       worker->bgw_name)));
  return;
 }

 if (!SanityCheckBackgroundWorker(worker, LOG))
  return;

 if (worker->bgw_notify_pid != 0)
 {
  ereport(LOG,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("background worker \"%s\": only dynamic background workers can request notification",
      worker->bgw_name)));
  return;
 }







 if (++numworkers > max_worker_processes)
 {
  ereport(LOG,
    (errcode(ERRCODE_CONFIGURATION_LIMIT_EXCEEDED),
     errmsg("too many background workers"),
     errdetail_plural("Up to %d background worker can be registered with the current settings.",
          "Up to %d background workers can be registered with the current settings.",
          max_worker_processes,
          max_worker_processes),
     errhint("Consider increasing the configuration parameter \"max_worker_processes\".")));
  return;
 }




 rw = malloc(sizeof(RegisteredBgWorker));
 if (rw == ((void*)0))
 {
  ereport(LOG,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("out of memory")));
  return;
 }

 rw->rw_worker = *worker;
 rw->rw_backend = ((void*)0);
 rw->rw_pid = 0;
 rw->rw_child_slot = 0;
 rw->rw_crashed_at = 0;
 rw->rw_terminate = 0;

 slist_push_head(&BackgroundWorkerList, &rw->rw_lnode);
}
