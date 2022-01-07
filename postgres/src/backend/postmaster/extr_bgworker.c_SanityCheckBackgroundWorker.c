
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bgw_flags; scalar_t__ bgw_start_time; int bgw_restart_time; int bgw_name; int bgw_type; } ;
typedef TYPE_1__ BackgroundWorker ;


 int BGWORKER_BACKEND_DATABASE_CONNECTION ;
 int BGWORKER_CLASS_PARALLEL ;
 int BGWORKER_SHMEM_ACCESS ;
 int BGW_NEVER_RESTART ;
 scalar_t__ BgWorkerStart_PostmasterStart ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int USECS_PER_DAY ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static bool
SanityCheckBackgroundWorker(BackgroundWorker *worker, int elevel)
{

 if (worker->bgw_flags & BGWORKER_BACKEND_DATABASE_CONNECTION)
 {
  if (!(worker->bgw_flags & BGWORKER_SHMEM_ACCESS))
  {
   ereport(elevel,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("background worker \"%s\": must attach to shared memory in order to request a database connection",
       worker->bgw_name)));
   return 0;
  }

  if (worker->bgw_start_time == BgWorkerStart_PostmasterStart)
  {
   ereport(elevel,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("background worker \"%s\": cannot request database access if starting at postmaster start",
       worker->bgw_name)));
   return 0;
  }


 }

 if ((worker->bgw_restart_time < 0 &&
   worker->bgw_restart_time != BGW_NEVER_RESTART) ||
  (worker->bgw_restart_time > USECS_PER_DAY / 1000))
 {
  ereport(elevel,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("background worker \"%s\": invalid restart interval",
      worker->bgw_name)));
  return 0;
 }






 if (worker->bgw_restart_time != BGW_NEVER_RESTART &&
  (worker->bgw_flags & BGWORKER_CLASS_PARALLEL) != 0)
 {
  ereport(elevel,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("background worker \"%s\": parallel workers may not be configured for restart",
      worker->bgw_name)));
  return 0;
 }




 if (strcmp(worker->bgw_type, "") == 0)
  strcpy(worker->bgw_type, worker->bgw_name);

 return 1;
}
