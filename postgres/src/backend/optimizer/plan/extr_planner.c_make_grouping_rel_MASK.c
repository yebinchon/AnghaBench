#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int consider_parallel; int /*<<< orphan*/  fdwroutine; int /*<<< orphan*/  useridiscurrent; int /*<<< orphan*/  userid; int /*<<< orphan*/  serverid; int /*<<< orphan*/ * reltarget; int /*<<< orphan*/  reloptkind; int /*<<< orphan*/ * relids; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  PathTarget ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  RELOPT_OTHER_UPPER_REL ; 
 int /*<<< orphan*/  UPPERREL_GROUP_AGG ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static RelOptInfo *
FUNC3(PlannerInfo *root, RelOptInfo *input_rel,
				  PathTarget *target, bool target_parallel_safe,
				  Node *havingQual)
{
	RelOptInfo *grouped_rel;

	if (FUNC0(input_rel))
	{
		grouped_rel = FUNC1(root, UPPERREL_GROUP_AGG,
									  input_rel->relids);
		grouped_rel->reloptkind = RELOPT_OTHER_UPPER_REL;
	}
	else
	{
		/*
		 * By tradition, the relids set for the main grouping relation is
		 * NULL.  (This could be changed, but might require adjustments
		 * elsewhere.)
		 */
		grouped_rel = FUNC1(root, UPPERREL_GROUP_AGG, NULL);
	}

	/* Set target. */
	grouped_rel->reltarget = target;

	/*
	 * If the input relation is not parallel-safe, then the grouped relation
	 * can't be parallel-safe, either.  Otherwise, it's parallel-safe if the
	 * target list and HAVING quals are parallel-safe.
	 */
	if (input_rel->consider_parallel && target_parallel_safe &&
		FUNC2(root, (Node *) havingQual))
		grouped_rel->consider_parallel = true;

	/*
	 * If the input rel belongs to a single FDW, so does the grouped rel.
	 */
	grouped_rel->serverid = input_rel->serverid;
	grouped_rel->userid = input_rel->userid;
	grouped_rel->useridiscurrent = input_rel->useridiscurrent;
	grouped_rel->fdwroutine = input_rel->fdwroutine;

	return grouped_rel;
}