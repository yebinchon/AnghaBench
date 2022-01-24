#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int64 ;
struct TYPE_10__ {int* tts_isnull; int /*<<< orphan*/ * tts_values; } ;
typedef  TYPE_2__ TupleTableSlot ;
struct TYPE_11__ {int number_of_rows; int sort_done; int /*<<< orphan*/  sortstate; TYPE_1__* qstate; } ;
struct TYPE_9__ {TYPE_2__* tupslot; int /*<<< orphan*/  tupdesc; } ;
typedef  TYPE_3__ OSAPerGroupState ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ AGG_CONTEXT_AGGREGATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int64
FUNC17(FunctionCallInfo fcinfo, int flag,
						 int64 *number_of_rows)
{
	int			nargs = FUNC10() - 1;
	int64		rank = 1;
	OSAPerGroupState *osastate;
	TupleTableSlot *slot;
	int			i;

	FUNC1(FUNC0(fcinfo, NULL) == AGG_CONTEXT_AGGREGATE);

	/* If there were no regular rows, the rank is always 1 */
	if (FUNC7(0))
	{
		*number_of_rows = 0;
		return 1;
	}

	osastate = (OSAPerGroupState *) FUNC9(0);
	*number_of_rows = osastate->number_of_rows;

	/* Adjust nargs to be the number of direct (or aggregated) args */
	if (nargs % 2 != 0)
		FUNC11(ERROR, "wrong number of arguments in hypothetical-set function");
	nargs /= 2;

	FUNC12(fcinfo, nargs, osastate->qstate->tupdesc);

	/* because we need a hypothetical row, we can't share transition state */
	FUNC1(!osastate->sort_done);

	/* insert the hypothetical row into the sort */
	slot = osastate->qstate->tupslot;
	FUNC4(slot);
	for (i = 0; i < nargs; i++)
	{
		slot->tts_values[i] = FUNC8(i + 1);
		slot->tts_isnull[i] = FUNC7(i + 1);
	}
	slot->tts_values[i] = FUNC6(flag);
	slot->tts_isnull[i] = false;
	FUNC5(slot);

	FUNC16(osastate->sortstate, slot);

	/* finish the sort */
	FUNC15(osastate->sortstate);
	osastate->sort_done = true;

	/* iterate till we find the hypothetical row */
	while (FUNC14(osastate->sortstate, true, true, slot, NULL))
	{
		bool		isnull;
		Datum		d = FUNC13(slot, nargs + 1, &isnull);

		if (!isnull && FUNC3(d) != 0)
			break;

		rank++;

		FUNC2();
	}

	FUNC4(slot);

	return rank;
}