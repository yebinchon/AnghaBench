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
struct TYPE_7__ {scalar_t__ amoppurpose; scalar_t__ amoplefttype; scalar_t__ amoprighttype; int /*<<< orphan*/  amopopr; int /*<<< orphan*/  amopsortfamily; } ;
struct TYPE_6__ {int /*<<< orphan*/  tuple; } ;
typedef  scalar_t__ Oid ;
typedef  int IndexAMProperty ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_amop ;
typedef  TYPE_3__ CatCList ;

/* Variables and functions */
 int /*<<< orphan*/  AMOPSTRATEGY ; 
 scalar_t__ AMOP_ORDER ; 
#define  AMPROP_DISTANCE_ORDERABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC9(Oid index_oid, int attno,
			IndexAMProperty prop, const char *propname,
			bool *res, bool *isnull)
{
	Oid			opclass,
				opfamily,
				opcintype;
	CatCList   *catlist;
	int			i;

	/* Only answer column-level inquiries */
	if (attno == 0)
		return false;

	switch (prop)
	{
		case AMPROP_DISTANCE_ORDERABLE:
			break;
		default:
			return false;
	}

	/*
	 * Currently, SP-GiST distance-ordered scans require that there be a
	 * distance operator in the opclass with the default types. So we assume
	 * that if such a operator exists, then there's a reason for it.
	 */

	/* First we need to know the column's opclass. */
	opclass = FUNC5(index_oid, attno);
	if (!FUNC2(opclass))
	{
		*isnull = true;
		return true;
	}

	/* Now look up the opclass family and input datatype. */
	if (!FUNC7(opclass, &opfamily, &opcintype))
	{
		*isnull = true;
		return true;
	}

	/* And now we can check whether the operator is provided. */
	catlist = FUNC4(AMOPSTRATEGY,
								  FUNC1(opfamily));

	*res = false;

	for (i = 0; i < catlist->n_members; i++)
	{
		HeapTuple	amoptup = &catlist->members[i]->tuple;
		Form_pg_amop amopform = (Form_pg_amop) FUNC0(amoptup);

		if (amopform->amoppurpose == AMOP_ORDER &&
			(amopform->amoplefttype == opcintype ||
			 amopform->amoprighttype == opcintype) &&
			FUNC8(amopform->amopsortfamily,
								   FUNC6(amopform->amopopr)))
		{
			*res = true;
			break;
		}
	}

	FUNC3(catlist);

	*isnull = false;

	return true;
}