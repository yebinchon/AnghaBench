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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  myTempNamespace ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

Oid
FUNC4(const char *nspname)
{
	/* check for pg_temp alias */
	if (FUNC3(nspname, "pg_temp") == 0)
	{
		if (FUNC1(myTempNamespace))
		{
			FUNC0(myTempNamespace, true);
			return myTempNamespace;
		}

		/*
		 * Since this is used only for looking up existing objects, there is
		 * no point in trying to initialize the temp namespace here; and doing
		 * so might create problems for some callers. Just report "not found".
		 */
		return InvalidOid;
	}

	return FUNC2(nspname, true);
}