#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int attnum; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNAME ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 

__attribute__((used)) static bool
FUNC11(Relation rel, const char *colname,
								bool if_not_exists)
{
	HeapTuple	attTuple;
	int			attnum;

	/*
	 * this test is deliberately not attisdropped-aware, since if one tries to
	 * add a column matching a dropped column name, it's gonna fail anyway.
	 */
	attTuple = FUNC7(ATTNAME,
							   FUNC2(FUNC5(rel)),
							   FUNC3(colname));
	if (!FUNC1(attTuple))
		return true;

	attnum = ((Form_pg_attribute) FUNC0(attTuple))->attnum;
	FUNC6(attTuple);

	/*
	 * We throw a different error message for conflicts with system column
	 * names, since they are normally not shown and the user might otherwise
	 * be confused about the reason for the conflict.
	 */
	if (attnum <= 0)
		FUNC8(ERROR,
				(FUNC9(ERRCODE_DUPLICATE_COLUMN),
				 FUNC10("column name \"%s\" conflicts with a system column name",
						colname)));
	else
	{
		if (if_not_exists)
		{
			FUNC8(NOTICE,
					(FUNC9(ERRCODE_DUPLICATE_COLUMN),
					 FUNC10("column \"%s\" of relation \"%s\" already exists, skipping",
							colname, FUNC4(rel))));
			return false;
		}

		FUNC8(ERROR,
				(FUNC9(ERRCODE_DUPLICATE_COLUMN),
				 FUNC10("column \"%s\" of relation \"%s\" already exists",
						colname, FUNC4(rel))));
	}

	return true;
}