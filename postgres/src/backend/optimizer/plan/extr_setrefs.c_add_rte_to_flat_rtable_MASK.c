#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  relationOids; int /*<<< orphan*/  finalrtable; } ;
struct TYPE_8__ {scalar_t__ rtekind; int /*<<< orphan*/  relid; void* securityQuals; void* colcollations; void* coltypmods; void* coltypes; void* values_lists; int /*<<< orphan*/ * tablefunc; void* functions; void* joinaliasvars; int /*<<< orphan*/ * subquery; int /*<<< orphan*/ * tablesample; } ;
typedef  TYPE_1__ RangeTblEntry ;
typedef  TYPE_2__ PlannerGlobal ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* NIL ; 
 scalar_t__ RTE_RELATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(PlannerGlobal *glob, RangeTblEntry *rte)
{
	RangeTblEntry *newrte;

	/* flat copy to duplicate all the scalar fields */
	newrte = (RangeTblEntry *) FUNC8(sizeof(RangeTblEntry));
	FUNC7(newrte, rte, sizeof(RangeTblEntry));

	/* zap unneeded sub-structure */
	newrte->tablesample = NULL;
	newrte->subquery = NULL;
	newrte->joinaliasvars = NIL;
	newrte->functions = NIL;
	newrte->tablefunc = NULL;
	newrte->values_lists = NIL;
	newrte->coltypes = NIL;
	newrte->coltypmods = NIL;
	newrte->colcollations = NIL;
	newrte->securityQuals = NIL;

	glob->finalrtable = FUNC4(glob->finalrtable, newrte);

	/*
	 * Check for RT index overflow; it's very unlikely, but if it did happen,
	 * the executor would get confused by varnos that match the special varno
	 * values.
	 */
	if (FUNC0(FUNC6(glob->finalrtable)))
		FUNC1(ERROR,
				(FUNC2(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC3("too many range table entries")));

	/*
	 * If it's a plain relation RTE, add the table to relationOids.
	 *
	 * We do this even though the RTE might be unreferenced in the plan tree;
	 * this would correspond to cases such as views that were expanded, child
	 * tables that were eliminated by constraint exclusion, etc. Schema
	 * invalidation on such a rel must still force rebuilding of the plan.
	 *
	 * Note we don't bother to avoid making duplicate list entries.  We could,
	 * but it would probably cost more cycles than it would save.
	 */
	if (newrte->rtekind == RTE_RELATION)
		glob->relationOids = FUNC5(glob->relationOids, newrte->relid);
}