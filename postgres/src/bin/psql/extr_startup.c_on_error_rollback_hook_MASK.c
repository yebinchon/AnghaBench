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
struct TYPE_2__ {int /*<<< orphan*/  on_error_rollback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSQL_ERROR_ROLLBACK_INTERACTIVE ; 
 int /*<<< orphan*/  PSQL_ERROR_ROLLBACK_OFF ; 
 int /*<<< orphan*/  PSQL_ERROR_ROLLBACK_ON ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 TYPE_1__ pset ; 

__attribute__((used)) static bool
FUNC4(const char *newval)
{
	FUNC0(newval != NULL);		/* else substitute hook messed up */
	if (FUNC3(newval, "interactive") == 0)
		pset.on_error_rollback = PSQL_ERROR_ROLLBACK_INTERACTIVE;
	else
	{
		bool		on_off;

		if (FUNC1(newval, NULL, &on_off))
			pset.on_error_rollback = on_off ? PSQL_ERROR_ROLLBACK_ON : PSQL_ERROR_ROLLBACK_OFF;
		else
		{
			FUNC2("ON_ERROR_ROLLBACK", newval, "on, off, interactive");
			return false;
		}
	}
	return true;
}