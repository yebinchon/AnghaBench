
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* partrelprunedata; } ;
struct TYPE_5__ {scalar_t__* subplan_map; int* subpart_map; int * present_parts; scalar_t__ exec_pruning_steps; int exec_context; scalar_t__ initial_pruning_steps; int initial_context; } ;
typedef TYPE_1__ PartitionedRelPruningData ;
typedef TYPE_2__ PartitionPruningData ;
typedef int Bitmapset ;


 int * bms_add_member (int *,scalar_t__) ;
 int bms_next_member (int *,int) ;
 int check_stack_depth () ;
 int * get_matching_partitions (int *,scalar_t__) ;

__attribute__((used)) static void
find_matching_subplans_recurse(PartitionPruningData *prunedata,
          PartitionedRelPruningData *pprune,
          bool initial_prune,
          Bitmapset **validsubplans)
{
 Bitmapset *partset;
 int i;


 check_stack_depth();


 if (initial_prune && pprune->initial_pruning_steps)
 {
  partset = get_matching_partitions(&pprune->initial_context,
            pprune->initial_pruning_steps);
 }
 else if (!initial_prune && pprune->exec_pruning_steps)
 {
  partset = get_matching_partitions(&pprune->exec_context,
            pprune->exec_pruning_steps);
 }
 else
 {




  partset = pprune->present_parts;
 }


 i = -1;
 while ((i = bms_next_member(partset, i)) >= 0)
 {
  if (pprune->subplan_map[i] >= 0)
   *validsubplans = bms_add_member(*validsubplans,
           pprune->subplan_map[i]);
  else
  {
   int partidx = pprune->subpart_map[i];

   if (partidx >= 0)
    find_matching_subplans_recurse(prunedata,
              &prunedata->partrelprunedata[partidx],
              initial_prune, validsubplans);
   else
   {







   }
  }
 }
}
