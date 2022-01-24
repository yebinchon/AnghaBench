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
struct TYPE_2__ {int /*<<< orphan*/  echo_hidden; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSQL_ECHO_HIDDEN_NOEXEC ; 
 int /*<<< orphan*/  PSQL_ECHO_HIDDEN_OFF ; 
 int /*<<< orphan*/  PSQL_ECHO_HIDDEN_ON ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 TYPE_1__ pset ; 

__attribute__((used)) static bool
FUNC4(const char *newval)
{
	FUNC0(newval != NULL);		/* else substitute hook messed up */
	if (FUNC3(newval, "noexec") == 0)
		pset.echo_hidden = PSQL_ECHO_HIDDEN_NOEXEC;
	else
	{
		bool		on_off;

		if (FUNC1(newval, NULL, &on_off))
			pset.echo_hidden = on_off ? PSQL_ECHO_HIDDEN_ON : PSQL_ECHO_HIDDEN_OFF;
		else
		{
			FUNC2("ECHO_HIDDEN", newval, "on, off, noexec");
			return false;
		}
	}
	return true;
}