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
typedef  int /*<<< orphan*/  pg_tz ;
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 

bool
FUNC5(char **newval, void **extra, GucSource source)
{
	pg_tz	   *new_tz;

	/*
	 * Assume it is a timezone name, and try to load it.
	 */
	new_tz = FUNC4(*newval);

	if (!new_tz)
	{
		/* Doesn't seem to be any great value in errdetail here */
		return false;
	}

	if (!FUNC3(new_tz))
	{
		FUNC1("time zone \"%s\" appears to use leap seconds",
						 *newval);
		FUNC0("PostgreSQL does not support leap seconds.");
		return false;
	}

	/*
	 * Pass back data for assign_log_timezone to use
	 */
	*extra = FUNC2(sizeof(pg_tz *));
	if (!*extra)
		return false;
	*((pg_tz **) *extra) = new_tz;

	return true;
}