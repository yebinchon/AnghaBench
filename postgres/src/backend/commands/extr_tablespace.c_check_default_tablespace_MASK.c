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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ MyDatabaseId ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PGC_S_TEST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

bool
FUNC7(char **newval, void **extra, GucSource source)
{
	/*
	 * If we aren't inside a transaction, or connected to a database, we
	 * cannot do the catalog accesses necessary to verify the name.  Must
	 * accept the value on faith.
	 */
	if (FUNC1() && MyDatabaseId != InvalidOid)
	{
		if (**newval != '\0' &&
			!FUNC2(FUNC6(*newval, true)))
		{
			/*
			 * When source == PGC_S_TEST, don't throw a hard error for a
			 * nonexistent tablespace, only a NOTICE.  See comments in guc.h.
			 */
			if (source == PGC_S_TEST)
			{
				FUNC3(NOTICE,
						(FUNC4(ERRCODE_UNDEFINED_OBJECT),
						 FUNC5("tablespace \"%s\" does not exist",
								*newval)));
			}
			else
			{
				FUNC0("Tablespace \"%s\" does not exist.",
									*newval);
				return false;
			}
		}
	}

	return true;
}