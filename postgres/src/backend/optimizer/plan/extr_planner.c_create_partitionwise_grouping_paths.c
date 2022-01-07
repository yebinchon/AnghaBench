
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int grouping_sets_data ;
typedef int child_extra ;
struct TYPE_25__ {int * havingQual; int target_parallel_safe; scalar_t__ patype; int * targetList; } ;
struct TYPE_24__ {int * exprs; } ;
struct TYPE_23__ {int nparts; scalar_t__ pathlist; int relids; struct TYPE_23__** part_rels; TYPE_2__* reltarget; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_2__ PathTarget ;
typedef scalar_t__ PartitionwiseAggregateType ;
typedef int Node ;
typedef int List ;
typedef TYPE_3__ GroupPathExtraData ;
typedef int AppendRelInfo ;
typedef int AggClauseCosts ;


 int Assert (int) ;
 scalar_t__ IS_DUMMY_REL (TYPE_1__*) ;
 int * NIL ;
 scalar_t__ PARTITIONWISE_AGGREGATE_FULL ;
 scalar_t__ PARTITIONWISE_AGGREGATE_NONE ;
 scalar_t__ PARTITIONWISE_AGGREGATE_PARTIAL ;
 int add_paths_to_append_rel (int *,TYPE_1__*,int *) ;
 scalar_t__ adjust_appendrel_attrs (int *,int *,int,int **) ;
 TYPE_2__* copy_pathtarget (TYPE_2__*) ;
 int create_ordinary_grouping_paths (int *,TYPE_1__*,TYPE_1__*,int const*,int *,TYPE_3__*,TYPE_1__**) ;
 int ** find_appinfos_by_relids (int *,int ,int*) ;
 int * lappend (int *,TYPE_1__*) ;
 TYPE_1__* make_grouping_rel (int *,TYPE_1__*,TYPE_2__*,int ,int *) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int pfree (int **) ;
 int set_cheapest (TYPE_1__*) ;

__attribute__((used)) static void
create_partitionwise_grouping_paths(PlannerInfo *root,
         RelOptInfo *input_rel,
         RelOptInfo *grouped_rel,
         RelOptInfo *partially_grouped_rel,
         const AggClauseCosts *agg_costs,
         grouping_sets_data *gd,
         PartitionwiseAggregateType patype,
         GroupPathExtraData *extra)
{
 int nparts = input_rel->nparts;
 int cnt_parts;
 List *grouped_live_children = NIL;
 List *partially_grouped_live_children = NIL;
 PathTarget *target = grouped_rel->reltarget;
 bool partial_grouping_valid = 1;

 Assert(patype != PARTITIONWISE_AGGREGATE_NONE);
 Assert(patype != PARTITIONWISE_AGGREGATE_PARTIAL ||
     partially_grouped_rel != ((void*)0));


 for (cnt_parts = 0; cnt_parts < nparts; cnt_parts++)
 {
  RelOptInfo *child_input_rel = input_rel->part_rels[cnt_parts];
  PathTarget *child_target = copy_pathtarget(target);
  AppendRelInfo **appinfos;
  int nappinfos;
  GroupPathExtraData child_extra;
  RelOptInfo *child_grouped_rel;
  RelOptInfo *child_partially_grouped_rel;


  if (child_input_rel == ((void*)0) || IS_DUMMY_REL(child_input_rel))
   continue;





  memcpy(&child_extra, extra, sizeof(child_extra));

  appinfos = find_appinfos_by_relids(root, child_input_rel->relids,
             &nappinfos);

  child_target->exprs = (List *)
   adjust_appendrel_attrs(root,
           (Node *) target->exprs,
           nappinfos, appinfos);


  child_extra.havingQual = (Node *)
   adjust_appendrel_attrs(root,
           extra->havingQual,
           nappinfos, appinfos);
  child_extra.targetList = (List *)
   adjust_appendrel_attrs(root,
           (Node *) extra->targetList,
           nappinfos, appinfos);






  child_extra.patype = patype;





  child_grouped_rel = make_grouping_rel(root, child_input_rel,
             child_target,
             extra->target_parallel_safe,
             child_extra.havingQual);


  create_ordinary_grouping_paths(root, child_input_rel,
            child_grouped_rel,
            agg_costs, gd, &child_extra,
            &child_partially_grouped_rel);

  if (child_partially_grouped_rel)
  {
   partially_grouped_live_children =
    lappend(partially_grouped_live_children,
      child_partially_grouped_rel);
  }
  else
   partial_grouping_valid = 0;

  if (patype == PARTITIONWISE_AGGREGATE_FULL)
  {
   set_cheapest(child_grouped_rel);
   grouped_live_children = lappend(grouped_live_children,
           child_grouped_rel);
  }

  pfree(appinfos);
 }
 if (partially_grouped_rel && partial_grouping_valid)
 {
  Assert(partially_grouped_live_children != NIL);

  add_paths_to_append_rel(root, partially_grouped_rel,
        partially_grouped_live_children);





  if (partially_grouped_rel->pathlist)
   set_cheapest(partially_grouped_rel);
 }


 if (patype == PARTITIONWISE_AGGREGATE_FULL)
 {
  Assert(grouped_live_children != NIL);

  add_paths_to_append_rel(root, grouped_rel, grouped_live_children);
 }
}
