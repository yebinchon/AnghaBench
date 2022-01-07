
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nworkers_launched; TYPE_1__* worker; } ;
struct TYPE_4__ {int * bgwhandle; } ;
typedef TYPE_2__ ParallelContext ;
typedef scalar_t__ BgwHandleStatus ;


 scalar_t__ BGWH_POSTMASTER_DIED ;
 int ERRCODE_ADMIN_SHUTDOWN ;
 int FATAL ;
 scalar_t__ WaitForBackgroundWorkerShutdown (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pfree (int *) ;

__attribute__((used)) static void
WaitForParallelWorkersToExit(ParallelContext *pcxt)
{
 int i;


 for (i = 0; i < pcxt->nworkers_launched; ++i)
 {
  BgwHandleStatus status;

  if (pcxt->worker == ((void*)0) || pcxt->worker[i].bgwhandle == ((void*)0))
   continue;

  status = WaitForBackgroundWorkerShutdown(pcxt->worker[i].bgwhandle);







  if (status == BGWH_POSTMASTER_DIED)
   ereport(FATAL,
     (errcode(ERRCODE_ADMIN_SHUTDOWN),
      errmsg("postmaster exited during a parallel transaction")));


  pfree(pcxt->worker[i].bgwhandle);
  pcxt->worker[i].bgwhandle = ((void*)0);
 }
}
