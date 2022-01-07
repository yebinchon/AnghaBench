
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
struct TYPE_11__ {int estimator; } ;
struct TYPE_8__ {TYPE_5__* state; } ;
struct TYPE_9__ {int ss_currentRelation; TYPE_1__ ps; } ;
struct TYPE_10__ {int pscan_len; TYPE_2__ ss; } ;
typedef TYPE_3__ SeqScanState ;
typedef TYPE_4__ ParallelContext ;
typedef TYPE_5__ EState ;


 int shm_toc_estimate_chunk (int *,int ) ;
 int shm_toc_estimate_keys (int *,int) ;
 int table_parallelscan_estimate (int ,int ) ;

void
ExecSeqScanEstimate(SeqScanState *node,
     ParallelContext *pcxt)
{
 EState *estate = node->ss.ps.state;

 node->pscan_len = table_parallelscan_estimate(node->ss.ss_currentRelation,
              estate->es_snapshot);
 shm_toc_estimate_chunk(&pcxt->estimator, node->pscan_len);
 shm_toc_estimate_keys(&pcxt->estimator, 1);
}
