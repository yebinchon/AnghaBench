#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  InheritanceKind ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_baserels ; 
 int /*<<< orphan*/  append_rel_list ; 
 int /*<<< orphan*/  canon_pathkeys ; 
 int /*<<< orphan*/  cte_plan_ids ; 
 int /*<<< orphan*/  curOuterParams ; 
 int /*<<< orphan*/  curOuterRels ; 
 int /*<<< orphan*/  distinct_pathkeys ; 
 int /*<<< orphan*/  ec_merging_done ; 
 int /*<<< orphan*/  eq_classes ; 
 int /*<<< orphan*/  fkey_list ; 
 int /*<<< orphan*/  full_join_clauses ; 
 int /*<<< orphan*/  glob ; 
 int /*<<< orphan*/  group_pathkeys ; 
 int /*<<< orphan*/  hasHavingQual ; 
 int /*<<< orphan*/  hasJoinRTEs ; 
 int /*<<< orphan*/  hasLateralRTEs ; 
 int /*<<< orphan*/  hasPseudoConstantQuals ; 
 int /*<<< orphan*/  hasRecursion ; 
 int /*<<< orphan*/  inhTargetKind ; 
 int /*<<< orphan*/  init_plans ; 
 int /*<<< orphan*/  join_cur_level ; 
 int /*<<< orphan*/  join_info_list ; 
 int /*<<< orphan*/  join_rel_list ; 
 int /*<<< orphan*/  left_join_clauses ; 
 int /*<<< orphan*/  limit_tuples ; 
 int /*<<< orphan*/  minmax_aggs ; 
 int /*<<< orphan*/  multiexpr_params ; 
 int /*<<< orphan*/  nullable_baserels ; 
 int /*<<< orphan*/  outer_params ; 
 int /*<<< orphan*/  parse ; 
 int /*<<< orphan*/  partColsUpdated ; 
 int /*<<< orphan*/  placeholder_list ; 
 int /*<<< orphan*/  plan_params ; 
 int /*<<< orphan*/  processed_tlist ; 
 int /*<<< orphan*/  qual_security_level ; 
 int /*<<< orphan*/  query_level ; 
 int /*<<< orphan*/  query_pathkeys ; 
 int /*<<< orphan*/  right_join_clauses ; 
 int /*<<< orphan*/  rowMarks ; 
 int /*<<< orphan*/  sort_pathkeys ; 
 int /*<<< orphan*/  total_table_pages ; 
 int /*<<< orphan*/  tuple_fraction ; 
 int /*<<< orphan*/  window_pathkeys ; 
 int /*<<< orphan*/  wt_param_id ; 

__attribute__((used)) static void
FUNC8(StringInfo str, const PlannerInfo *node)
{
	FUNC6("PLANNERINFO");

	/* NB: this isn't a complete set of fields */
	FUNC5(parse);
	FUNC5(glob);
	FUNC7(query_level);
	FUNC5(plan_params);
	FUNC0(outer_params);
	FUNC0(all_baserels);
	FUNC0(nullable_baserels);
	FUNC5(join_rel_list);
	FUNC4(join_cur_level);
	FUNC5(init_plans);
	FUNC5(cte_plan_ids);
	FUNC5(multiexpr_params);
	FUNC5(eq_classes);
	FUNC1(ec_merging_done);
	FUNC5(canon_pathkeys);
	FUNC5(left_join_clauses);
	FUNC5(right_join_clauses);
	FUNC5(full_join_clauses);
	FUNC5(join_info_list);
	FUNC5(append_rel_list);
	FUNC5(rowMarks);
	FUNC5(placeholder_list);
	FUNC5(fkey_list);
	FUNC5(query_pathkeys);
	FUNC5(group_pathkeys);
	FUNC5(window_pathkeys);
	FUNC5(distinct_pathkeys);
	FUNC5(sort_pathkeys);
	FUNC5(processed_tlist);
	FUNC5(minmax_aggs);
	FUNC3(total_table_pages, "%.0f");
	FUNC3(tuple_fraction, "%.4f");
	FUNC3(limit_tuples, "%.0f");
	FUNC7(qual_security_level);
	FUNC2(inhTargetKind, InheritanceKind);
	FUNC1(hasJoinRTEs);
	FUNC1(hasLateralRTEs);
	FUNC1(hasHavingQual);
	FUNC1(hasPseudoConstantQuals);
	FUNC1(hasRecursion);
	FUNC4(wt_param_id);
	FUNC0(curOuterRels);
	FUNC5(curOuterParams);
	FUNC1(partColsUpdated);
}