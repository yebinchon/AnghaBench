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
struct TYPE_2__ {scalar_t__ echo_hidden; scalar_t__ logfile; } ;

/* Variables and functions */
 scalar_t__ PSQL_ECHO_HIDDEN_NOEXEC ; 
 scalar_t__ PSQL_ECHO_HIDDEN_OFF ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 TYPE_1__ pset ; 
 scalar_t__ stdout ; 

__attribute__((used)) static bool
FUNC4(const char *query)
{
	if (pset.echo_hidden != PSQL_ECHO_HIDDEN_OFF)
	{
		FUNC3(FUNC0("********* QUERY **********\n"
				 "%s\n"
				 "**************************\n\n"), query);
		FUNC1(stdout);
		if (pset.logfile)
		{
			FUNC2(pset.logfile,
					FUNC0("********* QUERY **********\n"
					  "%s\n"
					  "**************************\n\n"), query);
			FUNC1(pset.logfile);
		}

		if (pset.echo_hidden == PSQL_ECHO_HIDDEN_NOEXEC)
			return false;
	}
	return true;
}