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
typedef  int /*<<< orphan*/  text ;
struct TYPE_2__ {int /*<<< orphan*/  attnum; scalar_t__ attisdropped; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidAttrNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static AttrNumber
FUNC12(Oid tableoid, text *column)
{
	char	   *colname;
	HeapTuple	attTuple;
	AttrNumber	attnum;

	colname = FUNC11(column);

	/*
	 * We don't use get_attnum() here because it will report that dropped
	 * columns don't exist.  We need to treat dropped columns differently from
	 * nonexistent columns.
	 */
	attTuple = FUNC5(ATTNAME,
							   FUNC3(tableoid),
							   FUNC0(colname));
	if (FUNC2(attTuple))
	{
		Form_pg_attribute attributeForm;

		attributeForm = (Form_pg_attribute) FUNC1(attTuple);
		/* We want to return NULL for dropped columns */
		if (attributeForm->attisdropped)
			attnum = InvalidAttrNumber;
		else
			attnum = attributeForm->attnum;
		FUNC4(attTuple);
	}
	else
	{
		char	   *tablename = FUNC9(tableoid);

		/*
		 * If the table OID is bogus, or it's just been dropped, we'll get
		 * NULL back.  In such cases we want has_column_privilege to return
		 * NULL too, so just return InvalidAttrNumber.
		 */
		if (tablename != NULL)
		{
			/* tableoid exists, colname does not, so throw error */
			FUNC6(ERROR,
					(FUNC7(ERRCODE_UNDEFINED_COLUMN),
					 FUNC8("column \"%s\" of relation \"%s\" does not exist",
							colname, tablename)));
		}
		/* tableoid doesn't exist, so act like attisdropped case */
		attnum = InvalidAttrNumber;
	}

	FUNC10(colname);
	return attnum;
}