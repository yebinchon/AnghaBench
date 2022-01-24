#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  double int64 ;
struct TYPE_4__ {int number_of_rows; int sort_done; int /*<<< orphan*/  sortstate; TYPE_1__* qstate; } ;
struct TYPE_3__ {scalar_t__ sortColType; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_2__ OSAPerGroupState ;
typedef  int /*<<< orphan*/  (* LerpFunc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ AGG_CONTEXT_AGGREGATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int) ; 
 double FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 double FUNC7 (double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,double) ; 
 double FUNC12 (double) ; 
 scalar_t__ FUNC13 (double) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,double,int) ; 

__attribute__((used)) static Datum
FUNC18(FunctionCallInfo fcinfo,
							 Oid expect_type,
							 LerpFunc lerpfunc)
{
	OSAPerGroupState *osastate;
	double		percentile;
	int64		first_row = 0;
	int64		second_row = 0;
	Datum		val;
	Datum		first_val;
	Datum		second_val;
	double		proportion;
	bool		isnull;

	FUNC1(FUNC0(fcinfo, NULL) == AGG_CONTEXT_AGGREGATE);

	/* Get and check the percentile argument */
	if (FUNC2(1))
		FUNC6();

	percentile = FUNC3(1);

	if (percentile < 0 || percentile > 1 || FUNC13(percentile))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
				 FUNC11("percentile value %g is not between 0 and 1",
						percentile)));

	/* If there were no regular rows, the result is NULL */
	if (FUNC2(0))
		FUNC6();

	osastate = (OSAPerGroupState *) FUNC4(0);

	/* number_of_rows could be zero if we only saw NULL input values */
	if (osastate->number_of_rows == 0)
		FUNC6();

	FUNC1(expect_type == osastate->qstate->sortColType);

	/* Finish the sort, or rescan if we already did */
	if (!osastate->sort_done)
	{
		FUNC15(osastate->sortstate);
		osastate->sort_done = true;
	}
	else
		FUNC16(osastate->sortstate);

	first_row = FUNC12(percentile * (osastate->number_of_rows - 1));
	second_row = FUNC7(percentile * (osastate->number_of_rows - 1));

	FUNC1(first_row < osastate->number_of_rows);

	if (!FUNC17(osastate->sortstate, first_row, true))
		FUNC8(ERROR, "missing row in percentile_cont");

	if (!FUNC14(osastate->sortstate, true, &first_val, &isnull, NULL))
		FUNC8(ERROR, "missing row in percentile_cont");
	if (isnull)
		FUNC6();

	if (first_row == second_row)
	{
		val = first_val;
	}
	else
	{
		if (!FUNC14(osastate->sortstate, true, &second_val, &isnull, NULL))
			FUNC8(ERROR, "missing row in percentile_cont");

		if (isnull)
			FUNC6();

		proportion = (percentile * (osastate->number_of_rows - 1)) - first_row;
		val = lerpfunc(first_val, second_val, proportion);
	}

	FUNC5(val);
}