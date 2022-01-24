#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  TZname; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ pg_tz ;

/* Variables and functions */
 scalar_t__ TZ_STRLEN_MAX ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static pg_tz *
FUNC5(const char *name)
{
	static pg_tz tz;

	if (FUNC2(name) > TZ_STRLEN_MAX)
		return NULL;			/* not going to fit */

	/*
	 * "GMT" is always sent to tzparse(); see comments for pg_tzset().
	 */
	if (FUNC0(name, "GMT") == 0)
	{
		if (!FUNC4(name, &tz.state, true))
		{
			/* This really, really should not happen ... */
			return NULL;
		}
	}
	else if (FUNC3(name, NULL, &tz.state, true) != 0)
	{
		if (name[0] == ':' || !FUNC4(name, &tz.state, false))
		{
			return NULL;		/* unknown timezone */
		}
	}

	FUNC1(tz.TZname, name);

	return &tz;
}