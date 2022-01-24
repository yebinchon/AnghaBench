#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  plan; } ;
struct TYPE_18__ {TYPE_2__ scan; } ;
typedef  TYPE_3__ WorkTableScan ;
struct TYPE_21__ {scalar_t__ param_info; TYPE_1__* parent; } ;
struct TYPE_20__ {scalar_t__ wt_param_id; struct TYPE_20__* parent_root; } ;
struct TYPE_19__ {scalar_t__ rtekind; int self_reference; scalar_t__ ctelevelsup; int /*<<< orphan*/  ctename; } ;
struct TYPE_16__ {scalar_t__ relid; } ;
typedef  TYPE_4__ RangeTblEntry ;
typedef  TYPE_5__ PlannerInfo ;
typedef  TYPE_6__ Path ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  scalar_t__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ RTE_CTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (scalar_t__,TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static WorkTableScan *
FUNC8(PlannerInfo *root, Path *best_path,
						  List *tlist, List *scan_clauses)
{
	WorkTableScan *scan_plan;
	Index		scan_relid = best_path->parent->relid;
	RangeTblEntry *rte;
	Index		levelsup;
	PlannerInfo *cteroot;

	FUNC0(scan_relid > 0);
	rte = FUNC6(scan_relid, root);
	FUNC0(rte->rtekind == RTE_CTE);
	FUNC0(rte->self_reference);

	/*
	 * We need to find the worktable param ID, which is in the plan level
	 * that's processing the recursive UNION, which is one level *below* where
	 * the CTE comes from.
	 */
	levelsup = rte->ctelevelsup;
	if (levelsup == 0)			/* shouldn't happen */
		FUNC2(ERROR, "bad levelsup for CTE \"%s\"", rte->ctename);
	levelsup--;
	cteroot = root;
	while (levelsup-- > 0)
	{
		cteroot = cteroot->parent_root;
		if (!cteroot)			/* shouldn't happen */
			FUNC2(ERROR, "bad levelsup for CTE \"%s\"", rte->ctename);
	}
	if (cteroot->wt_param_id < 0)	/* shouldn't happen */
		FUNC2(ERROR, "could not find param ID for CTE \"%s\"", rte->ctename);

	/* Sort clauses into best execution order */
	scan_clauses = FUNC5(root, scan_clauses);

	/* Reduce RestrictInfo list to bare expressions; ignore pseudoconstants */
	scan_clauses = FUNC3(scan_clauses, false);

	/* Replace any outer-relation variables with nestloop params */
	if (best_path->param_info)
	{
		scan_clauses = (List *)
			FUNC7(root, (Node *) scan_clauses);
	}

	scan_plan = FUNC4(tlist, scan_clauses, scan_relid,
								   cteroot->wt_param_id);

	FUNC1(&scan_plan->scan.plan, best_path);

	return scan_plan;
}