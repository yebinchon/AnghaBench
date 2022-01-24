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
struct TYPE_17__ {int /*<<< orphan*/ * tts_isnull; int /*<<< orphan*/ * tts_values; } ;
typedef  TYPE_2__ TupleTableSlot ;
struct TYPE_21__ {size_t current_set; TYPE_4__* tmpcontext; } ;
struct TYPE_20__ {int numTransInputs; int numDistinctCols; int /*<<< orphan*/ ** sortstates; int /*<<< orphan*/  equalfnMulti; TYPE_2__* uniqslot; TYPE_2__* sortslot; TYPE_3__* transfn_fcinfo; } ;
struct TYPE_19__ {TYPE_2__* ecxt_outertuple; TYPE_2__* ecxt_innertuple; } ;
struct TYPE_18__ {TYPE_1__* args; } ;
struct TYPE_16__ {int /*<<< orphan*/  isnull; int /*<<< orphan*/  value; } ;
typedef  TYPE_3__* FunctionCallInfo ;
typedef  TYPE_4__ ExprContext ;
typedef  scalar_t__ Datum ;
typedef  TYPE_5__* AggStatePerTrans ;
typedef  int /*<<< orphan*/  AggStatePerGroup ;
typedef  TYPE_6__ AggState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int,TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(AggState *aggstate,
								AggStatePerTrans pertrans,
								AggStatePerGroup pergroupstate)
{
	ExprContext *tmpcontext = aggstate->tmpcontext;
	FunctionCallInfo fcinfo = pertrans->transfn_fcinfo;
	TupleTableSlot *slot1 = pertrans->sortslot;
	TupleTableSlot *slot2 = pertrans->uniqslot;
	int			numTransInputs = pertrans->numTransInputs;
	int			numDistinctCols = pertrans->numDistinctCols;
	Datum		newAbbrevVal = (Datum) 0;
	Datum		oldAbbrevVal = (Datum) 0;
	bool		haveOldValue = false;
	TupleTableSlot *save = aggstate->tmpcontext->ecxt_outertuple;
	int			i;

	FUNC8(pertrans->sortstates[aggstate->current_set]);

	FUNC1(slot1);
	if (slot2)
		FUNC1(slot2);

	while (FUNC7(pertrans->sortstates[aggstate->current_set],
								  true, true, slot1, &newAbbrevVal))
	{
		FUNC0();

		tmpcontext->ecxt_outertuple = slot1;
		tmpcontext->ecxt_innertuple = slot2;

		if (numDistinctCols == 0 ||
			!haveOldValue ||
			newAbbrevVal != oldAbbrevVal ||
			!FUNC2(pertrans->equalfnMulti, tmpcontext))
		{
			/*
			 * Extract the first numTransInputs columns as datums to pass to
			 * the transfn.
			 */
			FUNC5(slot1, numTransInputs);

			/* Load values into fcinfo */
			/* Start from 1, since the 0th arg will be the transition value */
			for (i = 0; i < numTransInputs; i++)
			{
				fcinfo->args[i + 1].value = slot1->tts_values[i];
				fcinfo->args[i + 1].isnull = slot1->tts_isnull[i];
			}

			FUNC4(aggstate, pertrans, pergroupstate);

			if (numDistinctCols > 0)
			{
				/* swap the slot pointers to retain the current tuple */
				TupleTableSlot *tmpslot = slot2;

				slot2 = slot1;
				slot1 = tmpslot;
				/* avoid ExecQual() calls by reusing abbreviated keys */
				oldAbbrevVal = newAbbrevVal;
				haveOldValue = true;
			}
		}

		/* Reset context each time */
		FUNC3(tmpcontext);

		FUNC1(slot1);
	}

	if (slot2)
		FUNC1(slot2);

	FUNC6(pertrans->sortstates[aggstate->current_set]);
	pertrans->sortstates[aggstate->current_set] = NULL;

	/* restore previous slot, potentially in use for grouping sets */
	tmpcontext->ecxt_outertuple = save;
}