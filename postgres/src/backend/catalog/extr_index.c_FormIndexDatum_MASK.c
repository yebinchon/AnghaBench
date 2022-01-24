#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_6__ {int /*<<< orphan*/ * ecxt_scantuple; } ;
struct TYPE_5__ {scalar_t__ ii_Expressions; scalar_t__ ii_ExpressionsState; int ii_NumIndexAttrs; int* ii_IndexAttrNumbers; } ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  TYPE_1__ IndexInfo ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int*) ; 

void
FUNC10(IndexInfo *indexInfo,
			   TupleTableSlot *slot,
			   EState *estate,
			   Datum *values,
			   bool *isnull)
{
	ListCell   *indexpr_item;
	int			i;

	if (indexInfo->ii_Expressions != NIL &&
		indexInfo->ii_ExpressionsState == NIL)
	{
		/* First time through, set up expression evaluation state */
		indexInfo->ii_ExpressionsState =
			FUNC2(indexInfo->ii_Expressions, estate);
		/* Check caller has set up context correctly */
		FUNC0(FUNC3(estate)->ecxt_scantuple == slot);
	}
	indexpr_item = FUNC6(indexInfo->ii_ExpressionsState);

	for (i = 0; i < indexInfo->ii_NumIndexAttrs; i++)
	{
		int			keycol = indexInfo->ii_IndexAttrNumbers[i];
		Datum		iDatum;
		bool		isNull;

		if (keycol < 0)
			iDatum = FUNC9(slot, keycol, &isNull);
		else if (keycol != 0)
		{
			/*
			 * Plain index column; get the value we need directly from the
			 * heap tuple.
			 */
			iDatum = FUNC8(slot, keycol, &isNull);
		}
		else
		{
			/*
			 * Index expression --- need to evaluate it.
			 */
			if (indexpr_item == NULL)
				FUNC4(ERROR, "wrong number of index expressions");
			iDatum = FUNC1((ExprState *) FUNC5(indexpr_item),
											   FUNC3(estate),
											   &isNull);
			indexpr_item = FUNC7(indexInfo->ii_ExpressionsState, indexpr_item);
		}
		values[i] = iDatum;
		isnull[i] = isNull;
	}

	if (indexpr_item != NULL)
		FUNC4(ERROR, "wrong number of index expressions");
}