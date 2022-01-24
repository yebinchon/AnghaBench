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
struct TYPE_2__ {scalar_t__ echo_hidden; int /*<<< orphan*/  db; scalar_t__ logfile; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ PSQL_ECHO_HIDDEN_NOEXEC ; 
 scalar_t__ PSQL_ECHO_HIDDEN_OFF ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 TYPE_1__ pset ; 
 scalar_t__ stdout ; 

PGresult *
FUNC10(const char *query)
{
	PGresult   *res;

	if (!pset.db)
	{
		FUNC8("You are currently not connected to a database.");
		return NULL;
	}

	if (pset.echo_hidden != PSQL_ECHO_HIDDEN_OFF)
	{
		FUNC9(FUNC5("********* QUERY **********\n"
				 "%s\n"
				 "**************************\n\n"), query);
		FUNC6(stdout);
		if (pset.logfile)
		{
			FUNC7(pset.logfile,
					FUNC5("********* QUERY **********\n"
					  "%s\n"
					  "**************************\n\n"), query);
			FUNC6(pset.logfile);
		}

		if (pset.echo_hidden == PSQL_ECHO_HIDDEN_NOEXEC)
			return NULL;
	}

	FUNC4();

	res = FUNC2(pset.db, query);

	FUNC3();

	if (!FUNC0(res))
	{
		FUNC1(res);
		res = NULL;
	}

	return res;
}