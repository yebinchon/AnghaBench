#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t current_set; TYPE_1__* curaggcontext; } ;
struct TYPE_13__ {scalar_t__ noTransValue; scalar_t__ transValueIsNull; int /*<<< orphan*/  transValue; } ;
struct TYPE_12__ {scalar_t__ numSortCols; int numInputs; scalar_t__ initValueIsNull; int /*<<< orphan*/  transtypeLen; int /*<<< orphan*/  transtypeByVal; int /*<<< orphan*/  initValue; int /*<<< orphan*/ * sortNullsFirst; int /*<<< orphan*/ * sortCollations; int /*<<< orphan*/ * sortOperators; int /*<<< orphan*/  sortColIdx; int /*<<< orphan*/  sortdesc; scalar_t__* sortstates; } ;
struct TYPE_11__ {int /*<<< orphan*/  atttypid; } ;
struct TYPE_10__ {int /*<<< orphan*/  ecxt_per_tuple_memory; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  TYPE_3__* AggStatePerTrans ;
typedef  TYPE_4__* AggStatePerGroup ;
typedef  TYPE_5__ AggState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  work_mem ; 

__attribute__((used)) static void
FUNC6(AggState *aggstate, AggStatePerTrans pertrans,
					 AggStatePerGroup pergroupstate)
{
	/*
	 * Start a fresh sort operation for each DISTINCT/ORDER BY aggregate.
	 */
	if (pertrans->numSortCols > 0)
	{
		/*
		 * In case of rescan, maybe there could be an uncompleted sort
		 * operation?  Clean it up if so.
		 */
		if (pertrans->sortstates[aggstate->current_set])
			FUNC5(pertrans->sortstates[aggstate->current_set]);


		/*
		 * We use a plain Datum sorter when there's a single input column;
		 * otherwise sort the full tuple.  (See comments for
		 * process_ordered_aggregate_single.)
		 */
		if (pertrans->numInputs == 1)
		{
			Form_pg_attribute attr = FUNC1(pertrans->sortdesc, 0);

			pertrans->sortstates[aggstate->current_set] =
				FUNC3(attr->atttypid,
									  pertrans->sortOperators[0],
									  pertrans->sortCollations[0],
									  pertrans->sortNullsFirst[0],
									  work_mem, NULL, false);
		}
		else
			pertrans->sortstates[aggstate->current_set] =
				FUNC4(pertrans->sortdesc,
									 pertrans->numSortCols,
									 pertrans->sortColIdx,
									 pertrans->sortOperators,
									 pertrans->sortCollations,
									 pertrans->sortNullsFirst,
									 work_mem, NULL, false);
	}

	/*
	 * (Re)set transValue to the initial value.
	 *
	 * Note that when the initial value is pass-by-ref, we must copy it (into
	 * the aggcontext) since we will pfree the transValue later.
	 */
	if (pertrans->initValueIsNull)
		pergroupstate->transValue = pertrans->initValue;
	else
	{
		MemoryContext oldContext;

		oldContext = FUNC0(
										   aggstate->curaggcontext->ecxt_per_tuple_memory);
		pergroupstate->transValue = FUNC2(pertrans->initValue,
											  pertrans->transtypeByVal,
											  pertrans->transtypeLen);
		FUNC0(oldContext);
	}
	pergroupstate->transValueIsNull = pertrans->initValueIsNull;

	/*
	 * If the initial value for the transition state doesn't exist in the
	 * pg_aggregate table then we will let the first non-NULL value returned
	 * from the outer procNode become the initial value. (This is useful for
	 * aggregates like max() and min().) The noTransValue flag signals that we
	 * still need to do this.
	 */
	pergroupstate->noTransValue = pertrans->initValueIsNull;
}