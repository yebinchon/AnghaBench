#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {int* tts_isnull; int /*<<< orphan*/ * tts_values; TYPE_5__* tts_tupleDescriptor; } ;
typedef  TYPE_4__ TupleTableSlot ;
typedef  TYPE_5__* TupleDesc ;
struct TYPE_22__ {scalar_t__ plan; } ;
struct TYPE_23__ {TYPE_4__* ss_ScanTupleSlot; TYPE_2__ ps; } ;
struct TYPE_26__ {int /*<<< orphan*/  tupstore; int /*<<< orphan*/  coldefexprs; int /*<<< orphan*/  notnulls; int /*<<< orphan*/  ordinal; TYPE_3__ ss; TYPE_8__* routine; } ;
typedef  TYPE_6__ TableFuncScanState ;
struct TYPE_27__ {TYPE_1__* tablefunc; } ;
typedef  TYPE_7__ TableFuncScan ;
struct TYPE_28__ {int /*<<< orphan*/  (* GetValue ) (TYPE_6__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;scalar_t__ (* FetchRow ) (TYPE_6__*) ;} ;
typedef  TYPE_8__ TableFuncRoutine ;
struct TYPE_29__ {int /*<<< orphan*/  attname; int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; } ;
struct TYPE_25__ {int natts; } ;
struct TYPE_21__ {int ordinalitycol; } ;
struct TYPE_20__ {int /*<<< orphan*/  ecxt_per_tuple_memory; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  TYPE_9__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  TYPE_10__ ExprContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_10__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC7 (TYPE_5__*,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC18(TableFuncScanState *tstate, ExprContext *econtext)
{
	const TableFuncRoutine *routine = tstate->routine;
	TupleTableSlot *slot = tstate->ss.ss_ScanTupleSlot;
	TupleDesc	tupdesc = slot->tts_tupleDescriptor;
	Datum	   *values = slot->tts_values;
	bool	   *nulls = slot->tts_isnull;
	int			natts = tupdesc->natts;
	MemoryContext oldcxt;
	int			ordinalitycol;

	ordinalitycol =
		((TableFuncScan *) (tstate->ss.ps.plan))->tablefunc->ordinalitycol;

	/*
	 * We need a short-lived memory context that we can clean up each time
	 * around the loop, to avoid wasting space. Our default per-tuple context
	 * is fine for the job, since we won't have used it for anything yet in
	 * this tuple cycle.
	 */
	oldcxt = FUNC5(econtext->ecxt_per_tuple_memory);

	/*
	 * Keep requesting rows from the table builder until there aren't any.
	 */
	while (routine->FetchRow(tstate))
	{
		ListCell   *cell = FUNC13(tstate->coldefexprs);
		int			colno;

		FUNC0();

		FUNC1(tstate->ss.ss_ScanTupleSlot);

		/*
		 * Obtain the value of each column for this row, installing them into
		 * the slot; then add the tuple to the tuplestore.
		 */
		for (colno = 0; colno < natts; colno++)
		{
			Form_pg_attribute att = FUNC7(tupdesc, colno);

			if (colno == ordinalitycol)
			{
				/* Fast path for ordinality column */
				values[colno] = FUNC3(tstate->ordinal++);
				nulls[colno] = false;
			}
			else
			{
				bool		isnull;

				values[colno] = routine->GetValue(tstate,
												  colno,
												  att->atttypid,
												  att->atttypmod,
												  &isnull);

				/* No value?  Evaluate and apply the default, if any */
				if (isnull && cell != NULL)
				{
					ExprState  *coldefexpr = (ExprState *) FUNC12(cell);

					if (coldefexpr != NULL)
						values[colno] = FUNC2(coldefexpr, econtext,
													 &isnull);
				}

				/* Verify a possible NOT NULL constraint */
				if (isnull && FUNC8(colno, tstate->notnulls))
					FUNC9(ERROR,
							(FUNC10(ERRCODE_NULL_VALUE_NOT_ALLOWED),
							 FUNC11("null is not allowed in column \"%s\"",
									FUNC6(att->attname))));

				nulls[colno] = isnull;
			}

			/* advance list of default expressions */
			if (cell != NULL)
				cell = FUNC14(tstate->coldefexprs, cell);
		}

		FUNC17(tstate->tupstore, tupdesc, values, nulls);

		FUNC4(econtext->ecxt_per_tuple_memory);
	}

	FUNC5(oldcxt);
}