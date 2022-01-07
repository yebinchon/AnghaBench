
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ threadId; scalar_t__ pid; } ;
struct TYPE_5__ {int numWorkers; TYPE_2__* parallelSlot; } ;
typedef TYPE_1__ ParallelState ;
typedef TYPE_2__ ParallelSlot ;


 scalar_t__ GetCurrentThreadId () ;
 scalar_t__ getpid () ;

__attribute__((used)) static ParallelSlot *
GetMyPSlot(ParallelState *pstate)
{
 int i;

 for (i = 0; i < pstate->numWorkers; i++)
 {



  if (pstate->parallelSlot[i].pid == getpid())

   return &(pstate->parallelSlot[i]);
 }

 return ((void*)0);
}
