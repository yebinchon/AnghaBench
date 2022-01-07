
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * chgParam; } ;
struct TYPE_11__ {int ms_nplans; int ms_initialized; int ms_heap; TYPE_2__ ps; TYPE_3__** mergeplans; int * ms_valid_subplans; TYPE_1__* ms_prune_state; } ;
struct TYPE_10__ {int * chgParam; } ;
struct TYPE_8__ {int execparamids; } ;
typedef TYPE_3__ PlanState ;
typedef TYPE_4__ MergeAppendState ;


 int ExecReScan (TYPE_3__*) ;
 int UpdateChangedParamSet (TYPE_3__*,int *) ;
 int binaryheap_reset (int ) ;
 int bms_free (int *) ;
 scalar_t__ bms_overlap (int *,int ) ;

void
ExecReScanMergeAppend(MergeAppendState *node)
{
 int i;






 if (node->ms_prune_state &&
  bms_overlap(node->ps.chgParam,
     node->ms_prune_state->execparamids))
 {
  bms_free(node->ms_valid_subplans);
  node->ms_valid_subplans = ((void*)0);
 }

 for (i = 0; i < node->ms_nplans; i++)
 {
  PlanState *subnode = node->mergeplans[i];





  if (node->ps.chgParam != ((void*)0))
   UpdateChangedParamSet(subnode, node->ps.chgParam);





  if (subnode->chgParam == ((void*)0))
   ExecReScan(subnode);
 }
 binaryheap_reset(node->ms_heap);
 node->ms_initialized = 0;
}
