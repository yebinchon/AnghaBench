
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TuplesortInstrumentation ;
struct TYPE_10__ {scalar_t__ nworkers; int estimator; } ;
struct TYPE_7__ {int instrument; } ;
struct TYPE_8__ {TYPE_1__ ps; } ;
struct TYPE_9__ {TYPE_2__ ss; } ;
typedef TYPE_3__ SortState ;
typedef int Size ;
typedef TYPE_4__ ParallelContext ;


 int SharedSortInfo ;
 int add_size (int ,int ) ;
 int mul_size (scalar_t__,int) ;
 int offsetof (int ,int ) ;
 int shm_toc_estimate_chunk (int *,int ) ;
 int shm_toc_estimate_keys (int *,int) ;
 int sinstrument ;

void
ExecSortEstimate(SortState *node, ParallelContext *pcxt)
{
 Size size;


 if (!node->ss.ps.instrument || pcxt->nworkers == 0)
  return;

 size = mul_size(pcxt->nworkers, sizeof(TuplesortInstrumentation));
 size = add_size(size, offsetof(SharedSortInfo, sinstrument));
 shm_toc_estimate_chunk(&pcxt->estimator, size);
 shm_toc_estimate_keys(&pcxt->estimator, 1);
}
