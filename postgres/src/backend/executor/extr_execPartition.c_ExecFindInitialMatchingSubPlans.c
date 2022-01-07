
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int do_initial_prune; int num_partprunedata; int * other_subplans; TYPE_4__** partprunedata; scalar_t__ do_exec_prune; int prune_context; } ;
struct TYPE_12__ {int num_partrelprunedata; TYPE_3__* partrelprunedata; } ;
struct TYPE_10__ {TYPE_1__* planstate; } ;
struct TYPE_11__ {int nparts; int* subplan_map; int* subpart_map; int * present_parts; TYPE_2__ initial_context; scalar_t__ initial_pruning_steps; } ;
struct TYPE_9__ {int ps_ExprContext; } ;
typedef TYPE_3__ PartitionedRelPruningData ;
typedef TYPE_4__ PartitionPruningData ;
typedef TYPE_5__ PartitionPruneState ;
typedef int MemoryContext ;
typedef int Bitmapset ;


 int Assert (int) ;
 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int ResetExprContext (int ) ;
 void* bms_add_member (int *,int) ;
 int * bms_add_members (int *,int *) ;
 int * bms_copy (int *) ;
 int bms_free (int *) ;
 int bms_is_empty (int *) ;
 int bms_next_member (int *,int) ;
 int bms_num_members (int *) ;
 int find_matching_subplans_recurse (TYPE_4__*,TYPE_3__*,int,int **) ;
 scalar_t__ palloc0 (int) ;
 int pfree (int*) ;

Bitmapset *
ExecFindInitialMatchingSubPlans(PartitionPruneState *prunestate, int nsubplans)
{
 Bitmapset *result = ((void*)0);
 MemoryContext oldcontext;
 int i;


 Assert(prunestate->do_initial_prune);





 oldcontext = MemoryContextSwitchTo(prunestate->prune_context);





 for (i = 0; i < prunestate->num_partprunedata; i++)
 {
  PartitionPruningData *prunedata;
  PartitionedRelPruningData *pprune;

  prunedata = prunestate->partprunedata[i];
  pprune = &prunedata->partrelprunedata[0];


  find_matching_subplans_recurse(prunedata, pprune, 1, &result);


  if (pprune->initial_pruning_steps)
   ResetExprContext(pprune->initial_context.planstate->ps_ExprContext);
 }


 result = bms_add_members(result, prunestate->other_subplans);

 MemoryContextSwitchTo(oldcontext);


 result = bms_copy(result);

 MemoryContextReset(prunestate->prune_context);
 if (prunestate->do_exec_prune && bms_num_members(result) < nsubplans)
 {
  int *new_subplan_indexes;
  Bitmapset *new_other_subplans;
  int i;
  int newidx;






  new_subplan_indexes = (int *) palloc0(sizeof(int) * nsubplans);
  newidx = 1;
  i = -1;
  while ((i = bms_next_member(result, i)) >= 0)
  {
   Assert(i < nsubplans);
   new_subplan_indexes[i] = newidx++;
  }






  for (i = 0; i < prunestate->num_partprunedata; i++)
  {
   PartitionPruningData *prunedata = prunestate->partprunedata[i];
   int j;
   for (j = prunedata->num_partrelprunedata - 1; j >= 0; j--)
   {
    PartitionedRelPruningData *pprune = &prunedata->partrelprunedata[j];
    int nparts = pprune->nparts;
    int k;


    bms_free(pprune->present_parts);
    pprune->present_parts = ((void*)0);

    for (k = 0; k < nparts; k++)
    {
     int oldidx = pprune->subplan_map[k];
     int subidx;
     if (oldidx >= 0)
     {
      Assert(oldidx < nsubplans);
      pprune->subplan_map[k] = new_subplan_indexes[oldidx] - 1;

      if (new_subplan_indexes[oldidx] > 0)
       pprune->present_parts =
        bms_add_member(pprune->present_parts, k);
     }
     else if ((subidx = pprune->subpart_map[k]) >= 0)
     {
      PartitionedRelPruningData *subprune;

      subprune = &prunedata->partrelprunedata[subidx];

      if (!bms_is_empty(subprune->present_parts))
       pprune->present_parts =
        bms_add_member(pprune->present_parts, k);
     }
    }
   }
  }





  new_other_subplans = ((void*)0);
  i = -1;
  while ((i = bms_next_member(prunestate->other_subplans, i)) >= 0)
   new_other_subplans = bms_add_member(new_other_subplans,
            new_subplan_indexes[i] - 1);

  bms_free(prunestate->other_subplans);
  prunestate->other_subplans = new_other_subplans;

  pfree(new_subplan_indexes);
 }

 return result;
}
