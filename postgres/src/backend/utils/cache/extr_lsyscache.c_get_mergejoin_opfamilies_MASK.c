#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int n_members; TYPE_1__** members; } ;
struct TYPE_7__ {scalar_t__ amopmethod; scalar_t__ amopstrategy; int /*<<< orphan*/  amopfamily; } ;
struct TYPE_6__ {int /*<<< orphan*/  tuple; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_amop ;
typedef  TYPE_3__ CatCList ;

/* Variables and functions */
 int /*<<< orphan*/  AMOPOPID ; 
 scalar_t__ BTEqualStrategyNumber ; 
 scalar_t__ BTREE_AM_OID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

List *
FUNC5(Oid opno)
{
	List	   *result = NIL;
	CatCList   *catlist;
	int			i;

	/*
	 * Search pg_amop to see if the target operator is registered as the "="
	 * operator of any btree opfamily.
	 */
	catlist = FUNC3(AMOPOPID, FUNC1(opno));

	for (i = 0; i < catlist->n_members; i++)
	{
		HeapTuple	tuple = &catlist->members[i]->tuple;
		Form_pg_amop aform = (Form_pg_amop) FUNC0(tuple);

		/* must be btree equality */
		if (aform->amopmethod == BTREE_AM_OID &&
			aform->amopstrategy == BTEqualStrategyNumber)
			result = FUNC4(result, aform->amopfamily);
	}

	FUNC2(catlist);

	return result;
}