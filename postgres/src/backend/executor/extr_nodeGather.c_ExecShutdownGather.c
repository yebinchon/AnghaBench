
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pei; } ;
typedef TYPE_1__ GatherState ;


 int ExecParallelCleanup (int *) ;
 int ExecShutdownGatherWorkers (TYPE_1__*) ;

void
ExecShutdownGather(GatherState *node)
{
 ExecShutdownGatherWorkers(node);


 if (node->pei != ((void*)0))
 {
  ExecParallelCleanup(node->pei);
  node->pei = ((void*)0);
 }
}
