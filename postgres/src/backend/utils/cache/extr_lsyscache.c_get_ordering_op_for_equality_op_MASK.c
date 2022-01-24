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
struct TYPE_7__ {scalar_t__ amopmethod; scalar_t__ amopstrategy; int /*<<< orphan*/  amopfamily; int /*<<< orphan*/  amoprighttype; int /*<<< orphan*/  amoplefttype; } ;
struct TYPE_6__ {int /*<<< orphan*/  tuple; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_amop ;
typedef  TYPE_3__ CatCList ;

/* Variables and functions */
 int /*<<< orphan*/  AMOPOPID ; 
 scalar_t__ BTEqualStrategyNumber ; 
 int /*<<< orphan*/  BTLessStrategyNumber ; 
 scalar_t__ BTREE_AM_OID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC6(Oid opno, bool use_lhs_type)
{
	Oid			result = InvalidOid;
	CatCList   *catlist;
	int			i;

	/*
	 * Search pg_amop to see if the target operator is registered as the "="
	 * operator of any btree opfamily.
	 */
	catlist = FUNC4(AMOPOPID, FUNC1(opno));

	for (i = 0; i < catlist->n_members; i++)
	{
		HeapTuple	tuple = &catlist->members[i]->tuple;
		Form_pg_amop aform = (Form_pg_amop) FUNC0(tuple);

		/* must be btree */
		if (aform->amopmethod != BTREE_AM_OID)
			continue;

		if (aform->amopstrategy == BTEqualStrategyNumber)
		{
			/* Found a suitable opfamily, get matching ordering operator */
			Oid			typid;

			typid = use_lhs_type ? aform->amoplefttype : aform->amoprighttype;
			result = FUNC5(aform->amopfamily,
										 typid, typid,
										 BTLessStrategyNumber);
			if (FUNC2(result))
				break;
			/* failure probably shouldn't happen, but keep looking if so */
		}
	}

	FUNC3(catlist);

	return result;
}