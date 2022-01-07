
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int TuplesortInstrumentation ;
struct TYPE_16__ {int num_workers; } ;
struct TYPE_15__ {int nworkers; int toc; } ;
struct TYPE_13__ {TYPE_1__* plan; int instrument; } ;
struct TYPE_12__ {TYPE_3__ ps; } ;
struct TYPE_14__ {TYPE_6__* shared_info; TYPE_2__ ss; } ;
struct TYPE_11__ {int plan_node_id; } ;
typedef TYPE_4__ SortState ;
typedef scalar_t__ Size ;
typedef TYPE_5__ ParallelContext ;


 int SharedSortInfo ;
 int memset (TYPE_6__*,int ,scalar_t__) ;
 scalar_t__ offsetof (int ,int ) ;
 TYPE_6__* shm_toc_allocate (int ,scalar_t__) ;
 int shm_toc_insert (int ,int ,TYPE_6__*) ;
 int sinstrument ;

void
ExecSortInitializeDSM(SortState *node, ParallelContext *pcxt)
{
 Size size;


 if (!node->ss.ps.instrument || pcxt->nworkers == 0)
  return;

 size = offsetof(SharedSortInfo, sinstrument)
  + pcxt->nworkers * sizeof(TuplesortInstrumentation);
 node->shared_info = shm_toc_allocate(pcxt->toc, size);

 memset(node->shared_info, 0, size);
 node->shared_info->num_workers = pcxt->nworkers;
 shm_toc_insert(pcxt->toc, node->ss.ps.plan->plan_node_id,
       node->shared_info);
}
