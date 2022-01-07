
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iss_ScanDesc; } ;
typedef int ParallelContext ;
typedef TYPE_1__ IndexScanState ;


 int index_parallelrescan (int ) ;

void
ExecIndexScanReInitializeDSM(IndexScanState *node,
        ParallelContext *pcxt)
{
 index_parallelrescan(node->iss_ScanDesc);
}
