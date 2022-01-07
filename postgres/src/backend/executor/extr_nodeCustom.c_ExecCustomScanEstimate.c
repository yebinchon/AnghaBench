
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int (* EstimateDSMCustomScan ) (TYPE_2__*,TYPE_1__*) ;} ;
struct TYPE_9__ {int pscan_len; TYPE_3__* methods; } ;
struct TYPE_8__ {int estimator; } ;
typedef TYPE_1__ ParallelContext ;
typedef TYPE_2__ CustomScanState ;
typedef TYPE_3__ CustomExecMethods ;


 int shm_toc_estimate_chunk (int *,int ) ;
 int shm_toc_estimate_keys (int *,int) ;
 int stub1 (TYPE_2__*,TYPE_1__*) ;

void
ExecCustomScanEstimate(CustomScanState *node, ParallelContext *pcxt)
{
 const CustomExecMethods *methods = node->methods;

 if (methods->EstimateDSMCustomScan)
 {
  node->pscan_len = methods->EstimateDSMCustomScan(node, pcxt);
  shm_toc_estimate_chunk(&pcxt->estimator, node->pscan_len);
  shm_toc_estimate_keys(&pcxt->estimator, 1);
 }
}
