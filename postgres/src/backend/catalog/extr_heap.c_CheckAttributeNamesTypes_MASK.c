#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_7__ {int /*<<< orphan*/  attcollation; int /*<<< orphan*/  atttypid; int /*<<< orphan*/  attname; } ;
struct TYPE_6__ {int natts; } ;
typedef  TYPE_2__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_COLUMN ; 
 int /*<<< orphan*/  ERRCODE_TOO_MANY_COLUMNS ; 
 int /*<<< orphan*/  ERROR ; 
 int MaxHeapAttributeNumber ; 
 int /*<<< orphan*/  NIL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char RELKIND_COMPOSITE_TYPE ; 
 char RELKIND_VIEW ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (int,int) ; 

void
FUNC8(TupleDesc tupdesc, char relkind,
						 int flags)
{
	int			i;
	int			j;
	int			natts = tupdesc->natts;

	/* Sanity check on column count */
	if (natts < 0 || natts > MaxHeapAttributeNumber)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_TOO_MANY_COLUMNS),
				 FUNC6("tables can have at most %d columns",
						MaxHeapAttributeNumber)));

	/*
	 * first check for collision with system attribute names
	 *
	 * Skip this for a view or type relation, since those don't have system
	 * attributes.
	 */
	if (relkind != RELKIND_VIEW && relkind != RELKIND_COMPOSITE_TYPE)
	{
		for (i = 0; i < natts; i++)
		{
			Form_pg_attribute attr = FUNC3(tupdesc, i);

			if (FUNC2(FUNC1(attr->attname)) != NULL)
				FUNC4(ERROR,
						(FUNC5(ERRCODE_DUPLICATE_COLUMN),
						 FUNC6("column name \"%s\" conflicts with a system column name",
								FUNC1(attr->attname))));
		}
	}

	/*
	 * next check for repeated attribute names
	 */
	for (i = 1; i < natts; i++)
	{
		for (j = 0; j < i; j++)
		{
			if (FUNC7(FUNC1(FUNC3(tupdesc, j)->attname),
					   FUNC1(FUNC3(tupdesc, i)->attname)) == 0)
				FUNC4(ERROR,
						(FUNC5(ERRCODE_DUPLICATE_COLUMN),
						 FUNC6("column name \"%s\" specified more than once",
								FUNC1(FUNC3(tupdesc, j)->attname))));
		}
	}

	/*
	 * next check the attribute types
	 */
	for (i = 0; i < natts; i++)
	{
		FUNC0(FUNC1(FUNC3(tupdesc, i)->attname),
						   FUNC3(tupdesc, i)->atttypid,
						   FUNC3(tupdesc, i)->attcollation,
						   NIL, /* assume we're creating a new rowtype */
						   flags);
	}
}