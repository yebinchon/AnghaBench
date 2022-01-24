#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int n_members; TYPE_1__** members; } ;
struct TYPE_10__ {scalar_t__ amopmethod; int /*<<< orphan*/  amoprighttype; int /*<<< orphan*/  amoplefttype; int /*<<< orphan*/  amopfamily; scalar_t__ amopstrategy; } ;
struct TYPE_9__ {int strategy; int /*<<< orphan*/  oprighttype; int /*<<< orphan*/  oplefttype; int /*<<< orphan*/  opfamily_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  tuple; } ;
typedef  int StrategyNumber ;
typedef  TYPE_2__ OpBtreeInterpretation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_3__* Form_pg_amop ;
typedef  TYPE_4__ CatCList ;

/* Variables and functions */
 int /*<<< orphan*/  AMOPOPID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BTEqualStrategyNumber ; 
 scalar_t__ BTREE_AM_OID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int ROWCOMPARE_NE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC8 (int) ; 

List *
FUNC9(Oid opno)
{
	List	   *result = NIL;
	OpBtreeInterpretation *thisresult;
	CatCList   *catlist;
	int			i;

	/*
	 * Find all the pg_amop entries containing the operator.
	 */
	catlist = FUNC5(AMOPOPID, FUNC2(opno));

	for (i = 0; i < catlist->n_members; i++)
	{
		HeapTuple	op_tuple = &catlist->members[i]->tuple;
		Form_pg_amop op_form = (Form_pg_amop) FUNC1(op_tuple);
		StrategyNumber op_strategy;

		/* must be btree */
		if (op_form->amopmethod != BTREE_AM_OID)
			continue;

		/* Get the operator's btree strategy number */
		op_strategy = (StrategyNumber) op_form->amopstrategy;
		FUNC0(op_strategy >= 1 && op_strategy <= 5);

		thisresult = (OpBtreeInterpretation *)
			FUNC8(sizeof(OpBtreeInterpretation));
		thisresult->opfamily_id = op_form->amopfamily;
		thisresult->strategy = op_strategy;
		thisresult->oplefttype = op_form->amoplefttype;
		thisresult->oprighttype = op_form->amoprighttype;
		result = FUNC7(result, thisresult);
	}

	FUNC4(catlist);

	/*
	 * If we didn't find any btree opfamily containing the operator, perhaps
	 * it is a <> operator.  See if it has a negator that is in an opfamily.
	 */
	if (result == NIL)
	{
		Oid			op_negator = FUNC6(opno);

		if (FUNC3(op_negator))
		{
			catlist = FUNC5(AMOPOPID,
										  FUNC2(op_negator));

			for (i = 0; i < catlist->n_members; i++)
			{
				HeapTuple	op_tuple = &catlist->members[i]->tuple;
				Form_pg_amop op_form = (Form_pg_amop) FUNC1(op_tuple);
				StrategyNumber op_strategy;

				/* must be btree */
				if (op_form->amopmethod != BTREE_AM_OID)
					continue;

				/* Get the operator's btree strategy number */
				op_strategy = (StrategyNumber) op_form->amopstrategy;
				FUNC0(op_strategy >= 1 && op_strategy <= 5);

				/* Only consider negators that are = */
				if (op_strategy != BTEqualStrategyNumber)
					continue;

				/* OK, report it with "strategy" ROWCOMPARE_NE */
				thisresult = (OpBtreeInterpretation *)
					FUNC8(sizeof(OpBtreeInterpretation));
				thisresult->opfamily_id = op_form->amopfamily;
				thisresult->strategy = ROWCOMPARE_NE;
				thisresult->oplefttype = op_form->amoplefttype;
				thisresult->oprighttype = op_form->amoprighttype;
				result = FUNC7(result, thisresult);
			}

			FUNC4(catlist);
		}
	}

	return result;
}