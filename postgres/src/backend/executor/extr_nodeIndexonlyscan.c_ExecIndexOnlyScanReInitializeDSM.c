
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ioss_ScanDesc; } ;
typedef int ParallelContext ;
typedef TYPE_1__ IndexOnlyScanState ;


 int index_parallelrescan (int ) ;

void
ExecIndexOnlyScanReInitializeDSM(IndexOnlyScanState *node,
         ParallelContext *pcxt)
{
 index_parallelrescan(node->ioss_ScanDesc);
}
