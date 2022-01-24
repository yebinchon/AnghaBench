#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ GucSource ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ MyDatabaseId ; 
 scalar_t__ NAMEDATALEN ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PGC_S_TEST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (char*) ; 

bool
FUNC8(char **newval, void **extra, GucSource source)
{
	if (**newval == '\0')
	{
		FUNC0("%s cannot be empty.",
							"default_table_access_method");
		return false;
	}

	if (FUNC7(*newval) >= NAMEDATALEN)
	{
		FUNC0("%s is too long (maximum %d characters).",
							"default_table_access_method", NAMEDATALEN - 1);
		return false;
	}

	/*
	 * If we aren't inside a transaction, or not connected to a database, we
	 * cannot do the catalog access necessary to verify the method.  Must
	 * accept the value on faith.
	 */
	if (FUNC1() && MyDatabaseId != InvalidOid)
	{
		if (!FUNC2(FUNC6(*newval, true)))
		{
			/*
			 * When source == PGC_S_TEST, don't throw a hard error for a
			 * nonexistent table access method, only a NOTICE. See comments in
			 * guc.h.
			 */
			if (source == PGC_S_TEST)
			{
				FUNC3(NOTICE,
						(FUNC4(ERRCODE_UNDEFINED_OBJECT),
						 FUNC5("table access method \"%s\" does not exist",
								*newval)));
			}
			else
			{
				FUNC0("Table access method \"%s\" does not exist.",
									*newval);
				return false;
			}
		}
	}

	return true;
}