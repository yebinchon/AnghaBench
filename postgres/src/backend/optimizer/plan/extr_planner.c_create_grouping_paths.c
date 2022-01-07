
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ rollups; scalar_t__ any_hashable; } ;
typedef TYPE_1__ grouping_sets_data ;
struct TYPE_22__ {scalar_t__ numOrderedAggs; } ;
struct TYPE_21__ {int flags; int target_parallel_safe; int partial_costs_set; int patype; int targetList; int havingQual; } ;
struct TYPE_20__ {TYPE_2__* parse; } ;
struct TYPE_19__ {scalar_t__ groupClause; int groupingSets; int targetList; int havingQual; } ;
typedef int RelOptInfo ;
typedef TYPE_2__ Query ;
typedef TYPE_3__ PlannerInfo ;
typedef int PathTarget ;
typedef TYPE_4__ GroupPathExtraData ;
typedef TYPE_5__ AggClauseCosts ;


 int GROUPING_CAN_PARTIAL_AGG ;
 int GROUPING_CAN_USE_HASH ;
 int GROUPING_CAN_USE_SORT ;
 scalar_t__ NIL ;
 int PARTITIONWISE_AGGREGATE_FULL ;
 int PARTITIONWISE_AGGREGATE_NONE ;
 scalar_t__ can_partial_agg (TYPE_3__*,TYPE_5__ const*) ;
 int create_degenerate_grouping_paths (TYPE_3__*,int *,int *) ;
 int create_ordinary_grouping_paths (TYPE_3__*,int *,int *,TYPE_5__ const*,TYPE_1__*,TYPE_4__*,int **) ;
 scalar_t__ enable_partitionwise_aggregate ;
 scalar_t__ grouping_is_hashable (scalar_t__) ;
 scalar_t__ grouping_is_sortable (scalar_t__) ;
 scalar_t__ is_degenerate_grouping (TYPE_3__*) ;
 int * make_grouping_rel (TYPE_3__*,int *,int *,int,int ) ;
 int set_cheapest (int *) ;

__attribute__((used)) static RelOptInfo *
create_grouping_paths(PlannerInfo *root,
       RelOptInfo *input_rel,
       PathTarget *target,
       bool target_parallel_safe,
       const AggClauseCosts *agg_costs,
       grouping_sets_data *gd)
{
 Query *parse = root->parse;
 RelOptInfo *grouped_rel;
 RelOptInfo *partially_grouped_rel;





 grouped_rel = make_grouping_rel(root, input_rel, target,
         target_parallel_safe, parse->havingQual);





 if (is_degenerate_grouping(root))
  create_degenerate_grouping_paths(root, input_rel, grouped_rel);
 else
 {
  int flags = 0;
  GroupPathExtraData extra;
  if ((gd && gd->rollups != NIL)
   || grouping_is_sortable(parse->groupClause))
   flags |= GROUPING_CAN_USE_SORT;
  if ((parse->groupClause != NIL &&
    agg_costs->numOrderedAggs == 0 &&
    (gd ? gd->any_hashable : grouping_is_hashable(parse->groupClause))))
   flags |= GROUPING_CAN_USE_HASH;




  if (can_partial_agg(root, agg_costs))
   flags |= GROUPING_CAN_PARTIAL_AGG;

  extra.flags = flags;
  extra.target_parallel_safe = target_parallel_safe;
  extra.havingQual = parse->havingQual;
  extra.targetList = parse->targetList;
  extra.partial_costs_set = 0;







  if (enable_partitionwise_aggregate && !parse->groupingSets)
   extra.patype = PARTITIONWISE_AGGREGATE_FULL;
  else
   extra.patype = PARTITIONWISE_AGGREGATE_NONE;

  create_ordinary_grouping_paths(root, input_rel, grouped_rel,
            agg_costs, gd, &extra,
            &partially_grouped_rel);
 }

 set_cheapest(grouped_rel);
 return grouped_rel;
}
