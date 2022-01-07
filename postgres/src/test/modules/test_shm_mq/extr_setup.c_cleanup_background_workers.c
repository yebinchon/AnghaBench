
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t nworkers; int * handle; } ;
typedef TYPE_1__ worker_state ;
typedef int dsm_segment ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int TerminateBackgroundWorker (int ) ;

__attribute__((used)) static void
cleanup_background_workers(dsm_segment *seg, Datum arg)
{
 worker_state *wstate = (worker_state *) DatumGetPointer(arg);

 while (wstate->nworkers > 0)
 {
  --wstate->nworkers;
  TerminateBackgroundWorker(wstate->handle[wstate->nworkers]);
 }
}
