#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_4__* curaggcontext; TYPE_6__* curpertrans; TYPE_2__* tmpcontext; } ;
struct TYPE_21__ {int noTransValue; int transValueIsNull; void* transValue; } ;
struct TYPE_15__ {scalar_t__ fn_strict; } ;
struct TYPE_20__ {int numTransInputs; int /*<<< orphan*/  transtypeLen; int /*<<< orphan*/  transtypeByVal; TYPE_1__ transfn; TYPE_5__* transfn_fcinfo; } ;
struct TYPE_19__ {int isnull; TYPE_3__* args; } ;
struct TYPE_18__ {int /*<<< orphan*/  ecxt_per_tuple_memory; } ;
struct TYPE_17__ {int isnull; void* value; } ;
struct TYPE_16__ {int /*<<< orphan*/  ecxt_per_tuple_memory; } ;
struct TYPE_14__ {int /*<<< orphan*/  eoh_context; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_5__* FunctionCallInfo ;
typedef  void* Datum ;
typedef  TYPE_6__* AggStatePerTrans ;
typedef  TYPE_7__* AggStatePerGroup ;
typedef  TYPE_8__ AggState ;

/* Variables and functions */
 scalar_t__ CurrentMemoryContext ; 
 TYPE_13__* FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9(AggState *aggstate,
							AggStatePerTrans pertrans,
							AggStatePerGroup pergroupstate)
{
	FunctionCallInfo fcinfo = pertrans->transfn_fcinfo;
	MemoryContext oldContext;
	Datum		newVal;

	if (pertrans->transfn.fn_strict)
	{
		/*
		 * For a strict transfn, nothing happens when there's a NULL input; we
		 * just keep the prior transValue.
		 */
		int			numTransInputs = pertrans->numTransInputs;
		int			i;

		for (i = 1; i <= numTransInputs; i++)
		{
			if (fcinfo->args[i].isnull)
				return;
		}
		if (pergroupstate->noTransValue)
		{
			/*
			 * transValue has not been initialized. This is the first non-NULL
			 * input value. We use it as the initial value for transValue. (We
			 * already checked that the agg's input type is binary-compatible
			 * with its transtype, so straight copy here is OK.)
			 *
			 * We must copy the datum into aggcontext if it is pass-by-ref. We
			 * do not need to pfree the old transValue, since it's NULL.
			 */
			oldContext = FUNC6(
											   aggstate->curaggcontext->ecxt_per_tuple_memory);
			pergroupstate->transValue = FUNC7(fcinfo->args[1].value,
												  pertrans->transtypeByVal,
												  pertrans->transtypeLen);
			pergroupstate->transValueIsNull = false;
			pergroupstate->noTransValue = false;
			FUNC6(oldContext);
			return;
		}
		if (pergroupstate->transValueIsNull)
		{
			/*
			 * Don't call a strict function with NULL inputs.  Note it is
			 * possible to get here despite the above tests, if the transfn is
			 * strict *and* returned a NULL on a prior cycle. If that happens
			 * we will propagate the NULL all the way to the end.
			 */
			return;
		}
	}

	/* We run the transition functions in per-input-tuple memory context */
	oldContext = FUNC6(aggstate->tmpcontext->ecxt_per_tuple_memory);

	/* set up aggstate->curpertrans for AggGetAggref() */
	aggstate->curpertrans = pertrans;

	/*
	 * OK to call the transition function
	 */
	fcinfo->args[0].value = pergroupstate->transValue;
	fcinfo->args[0].isnull = pergroupstate->transValueIsNull;
	fcinfo->isnull = false;		/* just in case transfn doesn't set it */

	newVal = FUNC4(fcinfo);

	aggstate->curpertrans = NULL;

	/*
	 * If pass-by-ref datatype, must copy the new value into aggcontext and
	 * free the prior transValue.  But if transfn returned a pointer to its
	 * first input, we don't need to do anything.  Also, if transfn returned a
	 * pointer to a R/W expanded object that is already a child of the
	 * aggcontext, assume we can adopt that value without copying it.
	 */
	if (!pertrans->transtypeByVal &&
		FUNC1(newVal) != FUNC1(pergroupstate->transValue))
	{
		if (!fcinfo->isnull)
		{
			FUNC6(aggstate->curaggcontext->ecxt_per_tuple_memory);
			if (FUNC2(newVal,
											   false,
											   pertrans->transtypeLen) &&
				FUNC5(FUNC0(newVal)->eoh_context) == CurrentMemoryContext)
				 /* do nothing */ ;
			else
				newVal = FUNC7(newVal,
								   pertrans->transtypeByVal,
								   pertrans->transtypeLen);
		}
		if (!pergroupstate->transValueIsNull)
		{
			if (FUNC2(pergroupstate->transValue,
											   false,
											   pertrans->transtypeLen))
				FUNC3(pergroupstate->transValue);
			else
				FUNC8(FUNC1(pergroupstate->transValue));
		}
	}

	pergroupstate->transValue = newVal;
	pergroupstate->transValueIsNull = fcinfo->isnull;

	FUNC6(oldContext);
}