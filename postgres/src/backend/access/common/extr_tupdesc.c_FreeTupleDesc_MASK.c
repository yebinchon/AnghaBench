#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_11__ {int /*<<< orphan*/  attbyval; } ;
struct TYPE_10__ {scalar_t__ tdrefcount; int num_defval; int natts; int num_check; struct TYPE_10__* constr; struct TYPE_10__* ccbin; struct TYPE_10__* ccname; struct TYPE_10__* check; int /*<<< orphan*/  am_value; scalar_t__ am_present; struct TYPE_10__* missing; struct TYPE_10__* adbin; struct TYPE_10__* defval; } ;
typedef  TYPE_1__ ConstrCheck ;
typedef  TYPE_1__ AttrMissing ;
typedef  TYPE_1__ AttrDefault ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(TupleDesc tupdesc)
{
	int			i;

	/*
	 * Possibly this should assert tdrefcount == 0, to disallow explicit
	 * freeing of un-refcounted tupdescs?
	 */
	FUNC0(tupdesc->tdrefcount <= 0);

	if (tupdesc->constr)
	{
		if (tupdesc->constr->num_defval > 0)
		{
			AttrDefault *attrdef = tupdesc->constr->defval;

			for (i = tupdesc->constr->num_defval - 1; i >= 0; i--)
			{
				if (attrdef[i].adbin)
					FUNC3(attrdef[i].adbin);
			}
			FUNC3(attrdef);
		}
		if (tupdesc->constr->missing)
		{
			AttrMissing *attrmiss = tupdesc->constr->missing;

			for (i = tupdesc->natts - 1; i >= 0; i--)
			{
				if (attrmiss[i].am_present
					&& !FUNC2(tupdesc, i)->attbyval)
					FUNC3(FUNC1(attrmiss[i].am_value));
			}
			FUNC3(attrmiss);
		}
		if (tupdesc->constr->num_check > 0)
		{
			ConstrCheck *check = tupdesc->constr->check;

			for (i = tupdesc->constr->num_check - 1; i >= 0; i--)
			{
				if (check[i].ccname)
					FUNC3(check[i].ccname);
				if (check[i].ccbin)
					FUNC3(check[i].ccbin);
			}
			FUNC3(check);
		}
		FUNC3(tupdesc->constr);
	}

	FUNC3(tupdesc);
}