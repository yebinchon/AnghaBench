
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* plan; int instrument; } ;
struct TYPE_12__ {int * hinstrument; TYPE_2__ ps; } ;
struct TYPE_11__ {int toc; } ;
struct TYPE_10__ {int * hinstrument; } ;
struct TYPE_8__ {int plan_node_id; } ;
typedef TYPE_3__ SharedHashInfo ;
typedef TYPE_4__ ParallelWorkerContext ;
typedef TYPE_5__ HashState ;


 size_t ParallelWorkerNumber ;
 scalar_t__ shm_toc_lookup (int ,int ,int) ;

void
ExecHashInitializeWorker(HashState *node, ParallelWorkerContext *pwcxt)
{
 SharedHashInfo *shared_info;


 if (!node->ps.instrument)
  return;

 shared_info = (SharedHashInfo *)
  shm_toc_lookup(pwcxt->toc, node->ps.plan->plan_node_id, 0);
 node->hinstrument = &shared_info->hinstrument[ParallelWorkerNumber];
}
