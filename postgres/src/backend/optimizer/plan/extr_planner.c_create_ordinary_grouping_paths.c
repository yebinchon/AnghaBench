
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_51__ TYPE_6__ ;
typedef struct TYPE_50__ TYPE_5__ ;
typedef struct TYPE_49__ TYPE_4__ ;
typedef struct TYPE_48__ TYPE_3__ ;
typedef struct TYPE_47__ TYPE_2__ ;
typedef struct TYPE_46__ TYPE_1__ ;


typedef int grouping_sets_data ;
struct TYPE_51__ {scalar_t__ patype; int flags; int targetList; } ;
struct TYPE_50__ {int rows; } ;
struct TYPE_49__ {TYPE_1__* parse; } ;
struct TYPE_48__ {scalar_t__ pathlist; TYPE_2__* fdwroutine; scalar_t__ partial_pathlist; TYPE_5__* cheapest_total_path; } ;
struct TYPE_47__ {int (* GetForeignUpperPaths ) (TYPE_4__*,int ,TYPE_3__*,TYPE_3__*,TYPE_6__*) ;} ;
struct TYPE_46__ {int groupClause; } ;
typedef TYPE_3__ RelOptInfo ;
typedef TYPE_4__ PlannerInfo ;
typedef TYPE_5__ Path ;
typedef scalar_t__ PartitionwiseAggregateType ;
typedef TYPE_6__ GroupPathExtraData ;
typedef int AggClauseCosts ;


 int Assert (TYPE_3__*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int GROUPING_CAN_PARTIAL_AGG ;
 scalar_t__ IS_PARTITIONED_REL (TYPE_3__*) ;
 scalar_t__ NIL ;
 scalar_t__ PARTITIONWISE_AGGREGATE_FULL ;
 scalar_t__ PARTITIONWISE_AGGREGATE_NONE ;
 scalar_t__ PARTITIONWISE_AGGREGATE_PARTIAL ;
 int UPPERREL_GROUP_AGG ;
 int add_paths_to_grouping_rel (TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,int const*,int *,double,TYPE_6__*) ;
 TYPE_3__* create_partial_grouping_paths (TYPE_4__*,TYPE_3__*,TYPE_3__*,int *,TYPE_6__*,int) ;
 int create_partitionwise_grouping_paths (TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,int const*,int *,scalar_t__,TYPE_6__*) ;
 int create_upper_paths_hook (TYPE_4__*,int ,TYPE_3__*,TYPE_3__*,TYPE_6__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 int gather_grouping_paths (TYPE_4__*,TYPE_3__*) ;
 double get_number_of_groups (TYPE_4__*,int ,int *,int ) ;
 scalar_t__ group_by_has_partkey (TYPE_3__*,int ,int ) ;
 int set_cheapest (TYPE_3__*) ;
 int stub1 (TYPE_4__*,int ,TYPE_3__*,TYPE_3__*,TYPE_6__*) ;
 int stub2 (TYPE_4__*,int ,TYPE_3__*,TYPE_3__*,TYPE_6__*) ;

__attribute__((used)) static void
create_ordinary_grouping_paths(PlannerInfo *root, RelOptInfo *input_rel,
          RelOptInfo *grouped_rel,
          const AggClauseCosts *agg_costs,
          grouping_sets_data *gd,
          GroupPathExtraData *extra,
          RelOptInfo **partially_grouped_rel_p)
{
 Path *cheapest_path = input_rel->cheapest_total_path;
 RelOptInfo *partially_grouped_rel = ((void*)0);
 double dNumGroups;
 PartitionwiseAggregateType patype = PARTITIONWISE_AGGREGATE_NONE;







 if (extra->patype != PARTITIONWISE_AGGREGATE_NONE &&
  IS_PARTITIONED_REL(input_rel))
 {
  if (extra->patype == PARTITIONWISE_AGGREGATE_FULL &&
   group_by_has_partkey(input_rel, extra->targetList,
         root->parse->groupClause))
   patype = PARTITIONWISE_AGGREGATE_FULL;
  else if ((extra->flags & GROUPING_CAN_PARTIAL_AGG) != 0)
   patype = PARTITIONWISE_AGGREGATE_PARTIAL;
  else
   patype = PARTITIONWISE_AGGREGATE_NONE;
 }






 if ((extra->flags & GROUPING_CAN_PARTIAL_AGG) != 0)
 {
  bool force_rel_creation;






  force_rel_creation = (patype == PARTITIONWISE_AGGREGATE_PARTIAL);

  partially_grouped_rel =
   create_partial_grouping_paths(root,
            grouped_rel,
            input_rel,
            gd,
            extra,
            force_rel_creation);
 }


 *partially_grouped_rel_p = partially_grouped_rel;


 if (patype != PARTITIONWISE_AGGREGATE_NONE)
  create_partitionwise_grouping_paths(root, input_rel, grouped_rel,
           partially_grouped_rel, agg_costs,
           gd, patype, extra);


 if (extra->patype == PARTITIONWISE_AGGREGATE_PARTIAL)
 {
  Assert(partially_grouped_rel);

  if (partially_grouped_rel->pathlist)
   set_cheapest(partially_grouped_rel);

  return;
 }


 if (partially_grouped_rel && partially_grouped_rel->partial_pathlist)
 {
  gather_grouping_paths(root, partially_grouped_rel);
  set_cheapest(partially_grouped_rel);
 }




 dNumGroups = get_number_of_groups(root,
           cheapest_path->rows,
           gd,
           extra->targetList);


 add_paths_to_grouping_rel(root, input_rel, grouped_rel,
         partially_grouped_rel, agg_costs, gd,
         dNumGroups, extra);


 if (grouped_rel->pathlist == NIL)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("could not implement GROUP BY"),
     errdetail("Some of the datatypes only support hashing, while others only support sorting.")));





 if (grouped_rel->fdwroutine &&
  grouped_rel->fdwroutine->GetForeignUpperPaths)
  grouped_rel->fdwroutine->GetForeignUpperPaths(root, UPPERREL_GROUP_AGG,
               input_rel, grouped_rel,
               extra);


 if (create_upper_paths_hook)
  (*create_upper_paths_hook) (root, UPPERREL_GROUP_AGG,
         input_rel, grouped_rel,
         extra);
}
