
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nworkers; int * handle; } ;
typedef TYPE_1__ worker_state ;
typedef int pid_t ;
typedef scalar_t__ BgwHandleStatus ;


 scalar_t__ BGWH_POSTMASTER_DIED ;
 scalar_t__ BGWH_STOPPED ;
 scalar_t__ GetBackgroundWorkerPid (int ,int *) ;

__attribute__((used)) static bool
check_worker_status(worker_state *wstate)
{
 int n;


 for (n = 0; n < wstate->nworkers; ++n)
 {
  BgwHandleStatus status;
  pid_t pid;

  status = GetBackgroundWorkerPid(wstate->handle[n], &pid);
  if (status == BGWH_STOPPED || status == BGWH_POSTMASTER_DIED)
   return 0;
 }


 return 1;
}
