
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numWorkers; TYPE_1__* parallelSlot; } ;
struct TYPE_4__ {scalar_t__ workerStatus; } ;
typedef TYPE_2__ ParallelState ;


 int NO_SLOT ;
 scalar_t__ WRKR_IDLE ;

__attribute__((used)) static int
GetIdleWorker(ParallelState *pstate)
{
 int i;

 for (i = 0; i < pstate->numWorkers; i++)
 {
  if (pstate->parallelSlot[i].workerStatus == WRKR_IDLE)
   return i;
 }
 return NO_SLOT;
}
