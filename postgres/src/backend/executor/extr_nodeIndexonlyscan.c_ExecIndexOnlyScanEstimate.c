
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int es_snapshot; } ;
struct TYPE_8__ {TYPE_5__* state; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;
struct TYPE_11__ {int ioss_PscanLen; int ioss_RelationDesc; TYPE_2__ ss; } ;
struct TYPE_10__ {int estimator; } ;
typedef TYPE_3__ ParallelContext ;
typedef TYPE_4__ IndexOnlyScanState ;
typedef TYPE_5__ EState ;


 int index_parallelscan_estimate (int ,int ) ;
 int shm_toc_estimate_chunk (int *,int ) ;
 int shm_toc_estimate_keys (int *,int) ;

void
ExecIndexOnlyScanEstimate(IndexOnlyScanState *node,
        ParallelContext *pcxt)
{
 EState *estate = node->ss.ps.state;

 node->ioss_PscanLen = index_parallelscan_estimate(node->ioss_RelationDesc,
               estate->es_snapshot);
 shm_toc_estimate_chunk(&pcxt->estimator, node->ioss_PscanLen);
 shm_toc_estimate_keys(&pcxt->estimator, 1);
}
