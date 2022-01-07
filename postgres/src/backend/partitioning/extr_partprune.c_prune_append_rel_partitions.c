
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * steps; scalar_t__ contradictory; } ;
struct TYPE_11__ {int partnatts; scalar_t__ nparts; int * exprstates; int * planstate; int ppccontext; int * stepcmpfuncs; int partsupfunc; int partcollation; int boundinfo; int strategy; } ;
struct TYPE_10__ {scalar_t__ nparts; TYPE_1__* part_scheme; int boundinfo; int * baserestrictinfo; } ;
struct TYPE_9__ {int partnatts; int partsupfunc; int partcollation; int strategy; } ;
typedef TYPE_2__ RelOptInfo ;
typedef TYPE_3__ PartitionPruneContext ;
typedef int List ;
typedef TYPE_4__ GeneratePruningStepsContext ;
typedef int FmgrInfo ;
typedef int Bitmapset ;


 int Assert (int ) ;
 int CurrentMemoryContext ;
 int * NIL ;
 int PARTTARGET_PLANNER ;
 int * bms_add_range (int *,int ,scalar_t__) ;
 int enable_partition_pruning ;
 int gen_partprune_steps (TYPE_2__*,int *,int ,TYPE_4__*) ;
 int * get_matching_partitions (TYPE_3__*,int *) ;
 int list_length (int *) ;
 scalar_t__ palloc0 (int) ;

Bitmapset *
prune_append_rel_partitions(RelOptInfo *rel)
{
 List *clauses = rel->baserestrictinfo;
 List *pruning_steps;
 GeneratePruningStepsContext gcontext;
 PartitionPruneContext context;

 Assert(rel->part_scheme != ((void*)0));


 if (rel->nparts == 0)
  return ((void*)0);





 if (!enable_partition_pruning || clauses == NIL)
  return bms_add_range(((void*)0), 0, rel->nparts - 1);






 gen_partprune_steps(rel, clauses, PARTTARGET_PLANNER,
      &gcontext);
 if (gcontext.contradictory)
  return ((void*)0);
 pruning_steps = gcontext.steps;


 if (pruning_steps == NIL)
  return bms_add_range(((void*)0), 0, rel->nparts - 1);


 context.strategy = rel->part_scheme->strategy;
 context.partnatts = rel->part_scheme->partnatts;
 context.nparts = rel->nparts;
 context.boundinfo = rel->boundinfo;
 context.partcollation = rel->part_scheme->partcollation;
 context.partsupfunc = rel->part_scheme->partsupfunc;
 context.stepcmpfuncs = (FmgrInfo *) palloc0(sizeof(FmgrInfo) *
            context.partnatts *
            list_length(pruning_steps));
 context.ppccontext = CurrentMemoryContext;


 context.planstate = ((void*)0);
 context.exprstates = ((void*)0);


 return get_matching_partitions(&context, pruning_steps);
}
