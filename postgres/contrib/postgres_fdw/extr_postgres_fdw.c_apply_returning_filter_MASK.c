#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int* tts_isnull; int /*<<< orphan*/ * tts_values; } ;
typedef  TYPE_1__ TupleTableSlot ;
typedef  TYPE_2__* TupleDesc ;
struct TYPE_22__ {int /*<<< orphan*/ * es_result_relation_info; } ;
struct TYPE_21__ {int /*<<< orphan*/  t_data; int /*<<< orphan*/  t_self; } ;
struct TYPE_20__ {int* attnoMap; int ctidAttno; scalar_t__ hasSystemCols; int /*<<< orphan*/  resultRel; } ;
struct TYPE_19__ {int natts; } ;
typedef  int /*<<< orphan*/  ResultRelInfo ;
typedef  TYPE_3__ PgFdwDirectModifyState ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_4__* HeapTuple ;
typedef  TYPE_5__ EState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_4__* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static TupleTableSlot *
FUNC10(PgFdwDirectModifyState *dmstate,
					   TupleTableSlot *slot,
					   EState *estate)
{
	ResultRelInfo *relInfo = estate->es_result_relation_info;
	TupleDesc	resultTupType = FUNC8(dmstate->resultRel);
	TupleTableSlot *resultSlot;
	Datum	   *values;
	bool	   *isnull;
	Datum	   *old_values;
	bool	   *old_isnull;
	int			i;

	/*
	 * Use the return tuple slot as a place to store the result tuple.
	 */
	resultSlot = FUNC3(estate, relInfo);

	/*
	 * Extract all the values of the scan tuple.
	 */
	FUNC9(slot);
	old_values = slot->tts_values;
	old_isnull = slot->tts_isnull;

	/*
	 * Prepare to build the result tuple.
	 */
	FUNC1(resultSlot);
	values = resultSlot->tts_values;
	isnull = resultSlot->tts_isnull;

	/*
	 * Transpose data into proper fields of the result tuple.
	 */
	for (i = 0; i < resultTupType->natts; i++)
	{
		int			j = dmstate->attnoMap[i];

		if (j == 0)
		{
			values[i] = (Datum) 0;
			isnull[i] = true;
		}
		else
		{
			values[i] = old_values[j - 1];
			isnull[i] = old_isnull[j - 1];
		}
	}

	/*
	 * Build the virtual tuple.
	 */
	FUNC4(resultSlot);

	/*
	 * If we have any system columns to return, materialize a heap tuple in
	 * the slot from column values set above and install system columns in
	 * that tuple.
	 */
	if (dmstate->hasSystemCols)
	{
		HeapTuple	resultTup = FUNC2(resultSlot, true, NULL);

		/* ctid */
		if (dmstate->ctidAttno)
		{
			ItemPointer ctid = NULL;

			ctid = (ItemPointer) FUNC0(old_values[dmstate->ctidAttno - 1]);
			resultTup->t_self = *ctid;
		}

		/*
		 * And remaining columns
		 *
		 * Note: since we currently don't allow the target relation to appear
		 * on the nullable side of an outer join, any system columns wouldn't
		 * go to NULL.
		 *
		 * Note: no need to care about tableoid here because it will be
		 * initialized in ExecProcessReturning().
		 */
		FUNC7(resultTup->t_data, InvalidTransactionId);
		FUNC6(resultTup->t_data, InvalidTransactionId);
		FUNC5(resultTup->t_data, InvalidTransactionId);
	}

	/*
	 * And return the result tuple.
	 */
	return resultSlot;
}