
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* state; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;
struct TYPE_12__ {int pscan_len; TYPE_2__ ss; } ;
struct TYPE_11__ {int es_snapshot; } ;
struct TYPE_10__ {int estimator; } ;
typedef TYPE_3__ ParallelContext ;
typedef TYPE_4__ EState ;
typedef TYPE_5__ BitmapHeapScanState ;


 int EstimateSnapshotSpace (int ) ;
 int ParallelBitmapHeapState ;
 int add_size (int ,int ) ;
 int offsetof (int ,int ) ;
 int phs_snapshot_data ;
 int shm_toc_estimate_chunk (int *,int ) ;
 int shm_toc_estimate_keys (int *,int) ;

void
ExecBitmapHeapEstimate(BitmapHeapScanState *node,
        ParallelContext *pcxt)
{
 EState *estate = node->ss.ps.state;

 node->pscan_len = add_size(offsetof(ParallelBitmapHeapState,
          phs_snapshot_data),
          EstimateSnapshotSpace(estate->es_snapshot));

 shm_toc_estimate_chunk(&pcxt->estimator, node->pscan_len);
 shm_toc_estimate_keys(&pcxt->estimator, 1);
}
