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
struct TYPE_2__ {int /*<<< orphan*/  vars; } ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  PG_DIAG_MESSAGE_PRIMARY ; 
 int /*<<< orphan*/  PG_DIAG_SQLSTATE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__ pset ; 

__attribute__((used)) static void
FUNC3(PGresult *results, bool success)
{
	if (success)
	{
		const char *ntuples = FUNC0(results);

		FUNC2(pset.vars, "ERROR", "false");
		FUNC2(pset.vars, "SQLSTATE", "00000");
		FUNC2(pset.vars, "ROW_COUNT", *ntuples ? ntuples : "0");
	}
	else
	{
		const char *code = FUNC1(results, PG_DIAG_SQLSTATE);
		const char *mesg = FUNC1(results, PG_DIAG_MESSAGE_PRIMARY);

		FUNC2(pset.vars, "ERROR", "true");

		/*
		 * If there is no SQLSTATE code, use an empty string.  This can happen
		 * for libpq-detected errors (e.g., lost connection, ENOMEM).
		 */
		if (code == NULL)
			code = "";
		FUNC2(pset.vars, "SQLSTATE", code);
		FUNC2(pset.vars, "ROW_COUNT", "0");
		FUNC2(pset.vars, "LAST_ERROR_SQLSTATE", code);
		FUNC2(pset.vars, "LAST_ERROR_MESSAGE", mesg ? mesg : "");
	}
}