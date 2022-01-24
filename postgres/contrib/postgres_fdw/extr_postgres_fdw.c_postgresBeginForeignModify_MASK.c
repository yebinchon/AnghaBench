#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct TYPE_11__ {TYPE_2__** mt_plans; int /*<<< orphan*/  operation; TYPE_1__ ps; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ri_FdwState; int /*<<< orphan*/  ri_RangeTableIndex; } ;
struct TYPE_9__ {int /*<<< orphan*/  plan; } ;
typedef  TYPE_3__ ResultRelInfo ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  int /*<<< orphan*/  PgFdwModifyState ;
typedef  TYPE_4__ ModifyTableState ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int EXEC_FLAG_EXPLAIN_ONLY ; 
 int /*<<< orphan*/  FdwModifyPrivateHasReturning ; 
 int /*<<< orphan*/  FdwModifyPrivateRetrievedAttrs ; 
 int /*<<< orphan*/  FdwModifyPrivateTargetAttnums ; 
 int /*<<< orphan*/  FdwModifyPrivateUpdateSql ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(ModifyTableState *mtstate,
						   ResultRelInfo *resultRelInfo,
						   List *fdw_private,
						   int subplan_index,
						   int eflags)
{
	PgFdwModifyState *fmstate;
	char	   *query;
	List	   *target_attrs;
	bool		has_returning;
	List	   *retrieved_attrs;
	RangeTblEntry *rte;

	/*
	 * Do nothing in EXPLAIN (no ANALYZE) case.  resultRelInfo->ri_FdwState
	 * stays NULL.
	 */
	if (eflags & EXEC_FLAG_EXPLAIN_ONLY)
		return;

	/* Deconstruct fdw_private data. */
	query = FUNC4(FUNC3(fdw_private,
							FdwModifyPrivateUpdateSql));
	target_attrs = (List *) FUNC3(fdw_private,
									 FdwModifyPrivateTargetAttnums);
	has_returning = FUNC2(FUNC3(fdw_private,
									FdwModifyPrivateHasReturning));
	retrieved_attrs = (List *) FUNC3(fdw_private,
										FdwModifyPrivateRetrievedAttrs);

	/* Find RTE. */
	rte = FUNC1(resultRelInfo->ri_RangeTableIndex,
						mtstate->ps.state);

	/* Construct an execution state. */
	fmstate = FUNC0(mtstate->ps.state,
									rte,
									resultRelInfo,
									mtstate->operation,
									mtstate->mt_plans[subplan_index]->plan,
									query,
									target_attrs,
									has_returning,
									retrieved_attrs);

	resultRelInfo->ri_FdwState = fmstate;
}