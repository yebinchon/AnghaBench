
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PlannerInfo ;


 int InheritanceKind ;
 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int all_baserels ;
 int append_rel_list ;
 int canon_pathkeys ;
 int cte_plan_ids ;
 int curOuterParams ;
 int curOuterRels ;
 int distinct_pathkeys ;
 int ec_merging_done ;
 int eq_classes ;
 int fkey_list ;
 int full_join_clauses ;
 int glob ;
 int group_pathkeys ;
 int hasHavingQual ;
 int hasJoinRTEs ;
 int hasLateralRTEs ;
 int hasPseudoConstantQuals ;
 int hasRecursion ;
 int inhTargetKind ;
 int init_plans ;
 int join_cur_level ;
 int join_info_list ;
 int join_rel_list ;
 int left_join_clauses ;
 int limit_tuples ;
 int minmax_aggs ;
 int multiexpr_params ;
 int nullable_baserels ;
 int outer_params ;
 int parse ;
 int partColsUpdated ;
 int placeholder_list ;
 int plan_params ;
 int processed_tlist ;
 int qual_security_level ;
 int query_level ;
 int query_pathkeys ;
 int right_join_clauses ;
 int rowMarks ;
 int sort_pathkeys ;
 int total_table_pages ;
 int tuple_fraction ;
 int window_pathkeys ;
 int wt_param_id ;

__attribute__((used)) static void
_outPlannerInfo(StringInfo str, const PlannerInfo *node)
{
 WRITE_NODE_TYPE("PLANNERINFO");


 WRITE_NODE_FIELD(parse);
 WRITE_NODE_FIELD(glob);
 WRITE_UINT_FIELD(query_level);
 WRITE_NODE_FIELD(plan_params);
 WRITE_BITMAPSET_FIELD(outer_params);
 WRITE_BITMAPSET_FIELD(all_baserels);
 WRITE_BITMAPSET_FIELD(nullable_baserels);
 WRITE_NODE_FIELD(join_rel_list);
 WRITE_INT_FIELD(join_cur_level);
 WRITE_NODE_FIELD(init_plans);
 WRITE_NODE_FIELD(cte_plan_ids);
 WRITE_NODE_FIELD(multiexpr_params);
 WRITE_NODE_FIELD(eq_classes);
 WRITE_BOOL_FIELD(ec_merging_done);
 WRITE_NODE_FIELD(canon_pathkeys);
 WRITE_NODE_FIELD(left_join_clauses);
 WRITE_NODE_FIELD(right_join_clauses);
 WRITE_NODE_FIELD(full_join_clauses);
 WRITE_NODE_FIELD(join_info_list);
 WRITE_NODE_FIELD(append_rel_list);
 WRITE_NODE_FIELD(rowMarks);
 WRITE_NODE_FIELD(placeholder_list);
 WRITE_NODE_FIELD(fkey_list);
 WRITE_NODE_FIELD(query_pathkeys);
 WRITE_NODE_FIELD(group_pathkeys);
 WRITE_NODE_FIELD(window_pathkeys);
 WRITE_NODE_FIELD(distinct_pathkeys);
 WRITE_NODE_FIELD(sort_pathkeys);
 WRITE_NODE_FIELD(processed_tlist);
 WRITE_NODE_FIELD(minmax_aggs);
 WRITE_FLOAT_FIELD(total_table_pages, "%.0f");
 WRITE_FLOAT_FIELD(tuple_fraction, "%.4f");
 WRITE_FLOAT_FIELD(limit_tuples, "%.0f");
 WRITE_UINT_FIELD(qual_security_level);
 WRITE_ENUM_FIELD(inhTargetKind, InheritanceKind);
 WRITE_BOOL_FIELD(hasJoinRTEs);
 WRITE_BOOL_FIELD(hasLateralRTEs);
 WRITE_BOOL_FIELD(hasHavingQual);
 WRITE_BOOL_FIELD(hasPseudoConstantQuals);
 WRITE_BOOL_FIELD(hasRecursion);
 WRITE_INT_FIELD(wt_param_id);
 WRITE_BITMAPSET_FIELD(curOuterRels);
 WRITE_NODE_FIELD(curOuterParams);
 WRITE_BOOL_FIELD(partColsUpdated);
}
