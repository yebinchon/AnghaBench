#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ atttypid; } ;
struct TYPE_7__ {int natts; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_2__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_2__* FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static bool
FUNC5(TupleDesc ret_tupdesc, TupleDesc sql_tupdesc)
{
	int			i;
	Form_pg_attribute ret_attr;
	Oid			ret_atttypid;
	Form_pg_attribute sql_attr;
	Oid			sql_atttypid;

	if (ret_tupdesc->natts < 2 ||
		sql_tupdesc->natts < 3)
		return false;

	/* check the rowid types match */
	ret_atttypid = FUNC0(ret_tupdesc, 0)->atttypid;
	sql_atttypid = FUNC0(sql_tupdesc, 0)->atttypid;
	if (ret_atttypid != sql_atttypid)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
				 FUNC4("invalid return type"),
				 FUNC3("SQL rowid datatype does not match " \
						   "return rowid datatype.")));

	/*
	 * - attribute [1] of the sql tuple is the category; no need to check it -
	 * attribute [2] of the sql tuple should match attributes [1] to [natts]
	 * of the return tuple
	 */
	sql_attr = FUNC0(sql_tupdesc, 2);
	for (i = 1; i < ret_tupdesc->natts; i++)
	{
		ret_attr = FUNC0(ret_tupdesc, i);

		if (ret_attr->atttypid != sql_attr->atttypid)
			return false;
	}

	/* OK, the two tupdescs are compatible for our purposes */
	return true;
}