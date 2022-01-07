
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int instrument; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;
struct TYPE_7__ {scalar_t__ nworkers; int estimator; } ;
typedef TYPE_2__ ParallelContext ;
typedef TYPE_3__ HashState ;
typedef int HashInstrumentation ;


 int SharedHashInfo ;
 size_t add_size (size_t,int ) ;
 int hinstrument ;
 size_t mul_size (scalar_t__,int) ;
 int offsetof (int ,int ) ;
 int shm_toc_estimate_chunk (int *,size_t) ;
 int shm_toc_estimate_keys (int *,int) ;

void
ExecHashEstimate(HashState *node, ParallelContext *pcxt)
{
 size_t size;


 if (!node->ps.instrument || pcxt->nworkers == 0)
  return;

 size = mul_size(pcxt->nworkers, sizeof(HashInstrumentation));
 size = add_size(size, offsetof(SharedHashInfo, hinstrument));
 shm_toc_estimate_chunk(&pcxt->estimator, size);
 shm_toc_estimate_keys(&pcxt->estimator, 1);
}
