
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * reader; int * pei; } ;
typedef TYPE_1__ GatherState ;


 int ExecParallelFinish (int *) ;
 int pfree (int *) ;

__attribute__((used)) static void
ExecShutdownGatherWorkers(GatherState *node)
{
 if (node->pei != ((void*)0))
  ExecParallelFinish(node->pei);


 if (node->reader)
  pfree(node->reader);
 node->reader = ((void*)0);
}
