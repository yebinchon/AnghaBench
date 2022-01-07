
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int num_partprunedata; int prune_context; int other_subplans; TYPE_4__** partprunedata; int do_exec_prune; } ;
struct TYPE_12__ {TYPE_3__* partrelprunedata; } ;
struct TYPE_10__ {TYPE_1__* planstate; } ;
struct TYPE_11__ {TYPE_2__ exec_context; scalar_t__ exec_pruning_steps; } ;
struct TYPE_9__ {int ps_ExprContext; } ;
typedef TYPE_3__ PartitionedRelPruningData ;
typedef TYPE_4__ PartitionPruningData ;
typedef TYPE_5__ PartitionPruneState ;
typedef int MemoryContext ;
typedef int Bitmapset ;


 int Assert (int ) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int ResetExprContext (int ) ;
 int * bms_add_members (int *,int ) ;
 int * bms_copy (int *) ;
 int find_matching_subplans_recurse (TYPE_4__*,TYPE_3__*,int,int **) ;

Bitmapset *
ExecFindMatchingSubPlans(PartitionPruneState *prunestate)
{
 Bitmapset *result = ((void*)0);
 MemoryContext oldcontext;
 int i;






 Assert(prunestate->do_exec_prune);





 oldcontext = MemoryContextSwitchTo(prunestate->prune_context);





 for (i = 0; i < prunestate->num_partprunedata; i++)
 {
  PartitionPruningData *prunedata;
  PartitionedRelPruningData *pprune;

  prunedata = prunestate->partprunedata[i];
  pprune = &prunedata->partrelprunedata[0];

  find_matching_subplans_recurse(prunedata, pprune, 0, &result);


  if (pprune->exec_pruning_steps)
   ResetExprContext(pprune->exec_context.planstate->ps_ExprContext);
 }


 result = bms_add_members(result, prunestate->other_subplans);

 MemoryContextSwitchTo(oldcontext);


 result = bms_copy(result);

 MemoryContextReset(prunestate->prune_context);

 return result;
}
