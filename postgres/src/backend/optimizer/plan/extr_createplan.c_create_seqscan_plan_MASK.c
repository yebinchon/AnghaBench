#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ param_info; TYPE_1__* parent; } ;
struct TYPE_9__ {int /*<<< orphan*/  plan; } ;
struct TYPE_8__ {scalar_t__ relid; scalar_t__ rtekind; } ;
typedef  TYPE_2__ SeqScan ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_3__ Path ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  scalar_t__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RTE_RELATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static SeqScan *
FUNC6(PlannerInfo *root, Path *best_path,
					List *tlist, List *scan_clauses)
{
	SeqScan    *scan_plan;
	Index		scan_relid = best_path->parent->relid;

	/* it should be a base rel... */
	FUNC0(scan_relid > 0);
	FUNC0(best_path->parent->rtekind == RTE_RELATION);

	/* Sort clauses into best execution order */
	scan_clauses = FUNC4(root, scan_clauses);

	/* Reduce RestrictInfo list to bare expressions; ignore pseudoconstants */
	scan_clauses = FUNC2(scan_clauses, false);

	/* Replace any outer-relation variables with nestloop params */
	if (best_path->param_info)
	{
		scan_clauses = (List *)
			FUNC5(root, (Node *) scan_clauses);
	}

	scan_plan = FUNC3(tlist,
							 scan_clauses,
							 scan_relid);

	FUNC1(&scan_plan->plan, best_path);

	return scan_plan;
}