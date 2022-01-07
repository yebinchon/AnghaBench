
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* av_signal; int av_freeWorkers; int av_launcherpid; } ;
struct TYPE_3__ {int wi_sharedrel; int wi_dobalance; int wi_links; scalar_t__ wi_cost_limit_base; scalar_t__ wi_cost_limit; scalar_t__ wi_cost_delay; scalar_t__ wi_launchtime; int * wi_proc; void* wi_tableoid; void* wi_dboid; } ;
typedef int Datum ;


 size_t AutoVacRebalance ;
 TYPE_2__* AutoVacuumShmem ;
 int AutovacuumLauncherPid ;
 int AutovacuumLock ;
 void* InvalidOid ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_1__* MyWorkerInfo ;
 int dlist_delete (int *) ;
 int dlist_push_head (int *,int *) ;

__attribute__((used)) static void
FreeWorkerInfo(int code, Datum arg)
{
 if (MyWorkerInfo != ((void*)0))
 {
  LWLockAcquire(AutovacuumLock, LW_EXCLUSIVE);
  AutovacuumLauncherPid = AutoVacuumShmem->av_launcherpid;

  dlist_delete(&MyWorkerInfo->wi_links);
  MyWorkerInfo->wi_dboid = InvalidOid;
  MyWorkerInfo->wi_tableoid = InvalidOid;
  MyWorkerInfo->wi_sharedrel = 0;
  MyWorkerInfo->wi_proc = ((void*)0);
  MyWorkerInfo->wi_launchtime = 0;
  MyWorkerInfo->wi_dobalance = 0;
  MyWorkerInfo->wi_cost_delay = 0;
  MyWorkerInfo->wi_cost_limit = 0;
  MyWorkerInfo->wi_cost_limit_base = 0;
  dlist_push_head(&AutoVacuumShmem->av_freeWorkers,
      &MyWorkerInfo->wi_links);

  MyWorkerInfo = ((void*)0);





  AutoVacuumShmem->av_signal[AutoVacRebalance] = 1;
  LWLockRelease(AutovacuumLock);
 }
}
