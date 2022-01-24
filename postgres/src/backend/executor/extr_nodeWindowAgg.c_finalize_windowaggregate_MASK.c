#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
typedef  TYPE_6__* WindowStatePerFunc ;
typedef  TYPE_7__* WindowStatePerAgg ;
struct TYPE_19__ {TYPE_1__* ps_ExprContext; } ;
struct TYPE_20__ {TYPE_2__ ps; } ;
struct TYPE_25__ {int /*<<< orphan*/ * curaggcontext; TYPE_3__ ss; } ;
typedef  TYPE_8__ WindowAggState ;
struct TYPE_24__ {int numFinalArgs; int transValueIsNull; int /*<<< orphan*/  resulttypeLen; int /*<<< orphan*/  resulttypeByVal; scalar_t__ transValue; int /*<<< orphan*/ * aggcontext; int /*<<< orphan*/  transtypeLen; int /*<<< orphan*/  finalfn; int /*<<< orphan*/  finalfn_oid; } ;
struct TYPE_23__ {int /*<<< orphan*/  winCollation; } ;
struct TYPE_22__ {scalar_t__ fn_strict; } ;
struct TYPE_21__ {int isnull; scalar_t__ value; } ;
struct TYPE_18__ {int /*<<< orphan*/  ecxt_per_tuple_memory; } ;
struct TYPE_17__ {int isnull; TYPE_5__* flinfo; TYPE_4__* args; } ;
struct TYPE_16__ {int /*<<< orphan*/  fcinfo; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC_MAX_ARGS ; 
 scalar_t__ FUNC1 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_13__* fcinfo ; 
 TYPE_12__ fcinfodata ; 

__attribute__((used)) static void
FUNC9(WindowAggState *winstate,
						 WindowStatePerFunc perfuncstate,
						 WindowStatePerAgg peraggstate,
						 Datum *result, bool *isnull)
{
	MemoryContext oldContext;

	oldContext = FUNC6(winstate->ss.ps.ps_ExprContext->ecxt_per_tuple_memory);

	/*
	 * Apply the agg's finalfn if one is provided, else return transValue.
	 */
	if (FUNC7(peraggstate->finalfn_oid))
	{
		FUNC3(fcinfo, FUNC_MAX_ARGS);
		int			numFinalArgs = peraggstate->numFinalArgs;
		bool		anynull;
		int			i;

		FUNC2(fcinfodata.fcinfo, &(peraggstate->finalfn),
								 numFinalArgs,
								 perfuncstate->winCollation,
								 (void *) winstate, NULL);
		fcinfo->args[0].value =
			FUNC4(peraggstate->transValue,
									   peraggstate->transValueIsNull,
									   peraggstate->transtypeLen);
		fcinfo->args[0].isnull = peraggstate->transValueIsNull;
		anynull = peraggstate->transValueIsNull;

		/* Fill any remaining argument positions with nulls */
		for (i = 1; i < numFinalArgs; i++)
		{
			fcinfo->args[i].value = (Datum) 0;
			fcinfo->args[i].isnull = true;
			anynull = true;
		}

		if (fcinfo->flinfo->fn_strict && anynull)
		{
			/* don't call a strict function with NULL inputs */
			*result = (Datum) 0;
			*isnull = true;
		}
		else
		{
			winstate->curaggcontext = peraggstate->aggcontext;
			*result = FUNC1(fcinfo);
			winstate->curaggcontext = NULL;
			*isnull = fcinfo->isnull;
		}
	}
	else
	{
		/* Don't need MakeExpandedObjectReadOnly; datumCopy will copy it */
		*result = peraggstate->transValue;
		*isnull = peraggstate->transValueIsNull;
	}

	/*
	 * If result is pass-by-ref, make sure it is in the right context.
	 */
	if (!peraggstate->resulttypeByVal && !*isnull &&
		!FUNC5(CurrentMemoryContext,
							   FUNC0(*result)))
		*result = FUNC8(*result,
							peraggstate->resulttypeByVal,
							peraggstate->resulttypeLen);
	FUNC6(oldContext);
}