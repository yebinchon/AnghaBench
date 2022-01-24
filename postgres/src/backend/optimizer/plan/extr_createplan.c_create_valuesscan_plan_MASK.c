#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  plan; } ;
struct TYPE_13__ {TYPE_2__ scan; } ;
typedef  TYPE_3__ ValuesScan ;
struct TYPE_15__ {scalar_t__ param_info; TYPE_1__* parent; } ;
struct TYPE_14__ {scalar_t__ rtekind; int /*<<< orphan*/ * values_lists; } ;
struct TYPE_11__ {scalar_t__ relid; } ;
typedef  TYPE_4__ RangeTblEntry ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_5__ Path ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  scalar_t__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RTE_VALUES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ValuesScan *
FUNC7(PlannerInfo *root, Path *best_path,
					   List *tlist, List *scan_clauses)
{
	ValuesScan *scan_plan;
	Index		scan_relid = best_path->parent->relid;
	RangeTblEntry *rte;
	List	   *values_lists;

	/* it should be a values base rel... */
	FUNC0(scan_relid > 0);
	rte = FUNC5(scan_relid, root);
	FUNC0(rte->rtekind == RTE_VALUES);
	values_lists = rte->values_lists;

	/* Sort clauses into best execution order */
	scan_clauses = FUNC4(root, scan_clauses);

	/* Reduce RestrictInfo list to bare expressions; ignore pseudoconstants */
	scan_clauses = FUNC2(scan_clauses, false);

	/* Replace any outer-relation variables with nestloop params */
	if (best_path->param_info)
	{
		scan_clauses = (List *)
			FUNC6(root, (Node *) scan_clauses);
		/* The values lists could contain nestloop params, too */
		values_lists = (List *)
			FUNC6(root, (Node *) values_lists);
	}

	scan_plan = FUNC3(tlist, scan_clauses, scan_relid,
								values_lists);

	FUNC1(&scan_plan->scan.plan, best_path);

	return scan_plan;
}