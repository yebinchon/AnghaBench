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
typedef  int /*<<< orphan*/  RelOptInfo ;

/* Variables and functions */
 int /*<<< orphan*/  RTEKind ; 
 int /*<<< orphan*/  RelOptKind ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allvisfrac ; 
 int /*<<< orphan*/  baserestrict_min_security ; 
 int /*<<< orphan*/  baserestrictinfo ; 
 int /*<<< orphan*/  cheapest_parameterized_paths ; 
 int /*<<< orphan*/  cheapest_startup_path ; 
 int /*<<< orphan*/  cheapest_total_path ; 
 int /*<<< orphan*/  cheapest_unique_path ; 
 int /*<<< orphan*/  consider_parallel ; 
 int /*<<< orphan*/  consider_param_startup ; 
 int /*<<< orphan*/  consider_partitionwise_join ; 
 int /*<<< orphan*/  consider_startup ; 
 int /*<<< orphan*/  direct_lateral_relids ; 
 int /*<<< orphan*/  eclass_indexes ; 
 int /*<<< orphan*/  has_eclass_joins ; 
 int /*<<< orphan*/  indexlist ; 
 int /*<<< orphan*/  joininfo ; 
 int /*<<< orphan*/  lateral_referencers ; 
 int /*<<< orphan*/  lateral_relids ; 
 int /*<<< orphan*/  lateral_vars ; 
 int /*<<< orphan*/  max_attr ; 
 int /*<<< orphan*/  min_attr ; 
 int /*<<< orphan*/  pages ; 
 int /*<<< orphan*/  partial_pathlist ; 
 int /*<<< orphan*/  partitioned_child_rels ; 
 int /*<<< orphan*/  pathlist ; 
 int /*<<< orphan*/  ppilist ; 
 int /*<<< orphan*/  rel_parallel_workers ; 
 int /*<<< orphan*/  relid ; 
 int /*<<< orphan*/  relids ; 
 int /*<<< orphan*/  reloptkind ; 
 int /*<<< orphan*/  reltablespace ; 
 int /*<<< orphan*/  reltarget ; 
 int /*<<< orphan*/  rows ; 
 int /*<<< orphan*/  rtekind ; 
 int /*<<< orphan*/  serverid ; 
 int /*<<< orphan*/  statlist ; 
 int /*<<< orphan*/  subplan_params ; 
 int /*<<< orphan*/  subroot ; 
 int /*<<< orphan*/  top_parent_relids ; 
 int /*<<< orphan*/  tuples ; 
 int /*<<< orphan*/  userid ; 
 int /*<<< orphan*/  useridiscurrent ; 

__attribute__((used)) static void
FUNC9(StringInfo str, const RelOptInfo *node)
{
	FUNC6("RELOPTINFO");

	/* NB: this isn't a complete set of fields */
	FUNC2(reloptkind, RelOptKind);
	FUNC0(relids);
	FUNC3(rows, "%.0f");
	FUNC1(consider_startup);
	FUNC1(consider_param_startup);
	FUNC1(consider_parallel);
	FUNC5(reltarget);
	FUNC5(pathlist);
	FUNC5(ppilist);
	FUNC5(partial_pathlist);
	FUNC5(cheapest_startup_path);
	FUNC5(cheapest_total_path);
	FUNC5(cheapest_unique_path);
	FUNC5(cheapest_parameterized_paths);
	FUNC0(direct_lateral_relids);
	FUNC0(lateral_relids);
	FUNC8(relid);
	FUNC7(reltablespace);
	FUNC2(rtekind, RTEKind);
	FUNC4(min_attr);
	FUNC4(max_attr);
	FUNC5(lateral_vars);
	FUNC0(lateral_referencers);
	FUNC5(indexlist);
	FUNC5(statlist);
	FUNC8(pages);
	FUNC3(tuples, "%.0f");
	FUNC3(allvisfrac, "%.6f");
	FUNC0(eclass_indexes);
	FUNC5(subroot);
	FUNC5(subplan_params);
	FUNC4(rel_parallel_workers);
	FUNC7(serverid);
	FUNC7(userid);
	FUNC1(useridiscurrent);
	/* we don't try to print fdwroutine or fdw_private */
	/* can't print unique_for_rels/non_unique_for_rels; BMSes aren't Nodes */
	FUNC5(baserestrictinfo);
	FUNC8(baserestrict_min_security);
	FUNC5(joininfo);
	FUNC1(has_eclass_joins);
	FUNC1(consider_partitionwise_join);
	FUNC0(top_parent_relids);
	FUNC5(partitioned_child_rels);
}