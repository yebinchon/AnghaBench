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
struct TYPE_14__ {size_t current_set; TYPE_1__* tmpcontext; } ;
struct TYPE_13__ {int numDistinctCols; int /*<<< orphan*/ ** sortstates; int /*<<< orphan*/  inputtypeByVal; int /*<<< orphan*/  aggCollation; int /*<<< orphan*/  equalfnOne; TYPE_3__* transfn_fcinfo; } ;
struct TYPE_12__ {TYPE_2__* args; } ;
struct TYPE_11__ {scalar_t__ value; int isnull; } ;
struct TYPE_10__ {int /*<<< orphan*/  ecxt_per_tuple_memory; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_3__* FunctionCallInfo ;
typedef  scalar_t__ Datum ;
typedef  TYPE_4__* AggStatePerTrans ;
typedef  int /*<<< orphan*/  AggStatePerGroup ;
typedef  TYPE_5__ AggState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,scalar_t__*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(AggState *aggstate,
								 AggStatePerTrans pertrans,
								 AggStatePerGroup pergroupstate)
{
	Datum		oldVal = (Datum) 0;
	bool		oldIsNull = true;
	bool		haveOldVal = false;
	MemoryContext workcontext = aggstate->tmpcontext->ecxt_per_tuple_memory;
	MemoryContext oldContext;
	bool		isDistinct = (pertrans->numDistinctCols > 0);
	Datum		newAbbrevVal = (Datum) 0;
	Datum		oldAbbrevVal = (Datum) 0;
	FunctionCallInfo fcinfo = pertrans->transfn_fcinfo;
	Datum	   *newVal;
	bool	   *isNull;

	FUNC0(pertrans->numDistinctCols < 2);

	FUNC10(pertrans->sortstates[aggstate->current_set]);

	/* Load the column into argument 1 (arg 0 will be transition value) */
	newVal = &fcinfo->args[1].value;
	isNull = &fcinfo->args[1].isnull;

	/*
	 * Note: if input type is pass-by-ref, the datums returned by the sort are
	 * freshly palloc'd in the per-query context, so we must be careful to
	 * pfree them when they are no longer needed.
	 */

	while (FUNC9(pertrans->sortstates[aggstate->current_set],
							  true, newVal, isNull, &newAbbrevVal))
	{
		/*
		 * Clear and select the working context for evaluation of the equality
		 * function and transition function.
		 */
		FUNC4(workcontext);
		oldContext = FUNC5(workcontext);

		/*
		 * If DISTINCT mode, and not distinct from prior, skip it.
		 */
		if (isDistinct &&
			haveOldVal &&
			((oldIsNull && *isNull) ||
			 (!oldIsNull && !*isNull &&
			  oldAbbrevVal == newAbbrevVal &&
			  FUNC1(FUNC3(&pertrans->equalfnOne,
											 pertrans->aggCollation,
											 oldVal, *newVal)))))
		{
			/* equal to prior, so forget this one */
			if (!pertrans->inputtypeByVal && !*isNull)
				FUNC7(FUNC2(*newVal));
		}
		else
		{
			FUNC6(aggstate, pertrans, pergroupstate);
			/* forget the old value, if any */
			if (!oldIsNull && !pertrans->inputtypeByVal)
				FUNC7(FUNC2(oldVal));
			/* and remember the new one for subsequent equality checks */
			oldVal = *newVal;
			oldAbbrevVal = newAbbrevVal;
			oldIsNull = *isNull;
			haveOldVal = true;
		}

		FUNC5(oldContext);
	}

	if (!oldIsNull && !pertrans->inputtypeByVal)
		FUNC7(FUNC2(oldVal));

	FUNC8(pertrans->sortstates[aggstate->current_set]);
	pertrans->sortstates[aggstate->current_set] = NULL;
}