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
typedef  int /*<<< orphan*/  backslashResult ;
struct TYPE_2__ {int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 TYPE_1__ pset ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static backslashResult
FUNC11(PsqlScanState scan_state, bool active_branch)
{
	if (active_branch)
	{
		char	   *db = FUNC0(pset.db);

		if (db == NULL)
			FUNC9(FUNC5("You are currently not connected to a database.\n"));
		else
		{
			char	   *host = FUNC1(pset.db);
			char	   *hostaddr = FUNC2(pset.db);

			/*
			 * If the host is an absolute path, the connection is via socket
			 * unless overridden by hostaddr
			 */
			if (FUNC6(host))
			{
				if (hostaddr && *hostaddr)
					FUNC9(FUNC5("You are connected to database \"%s\" as user \"%s\" on address \"%s\" at port \"%s\".\n"),
						   db, FUNC4(pset.db), hostaddr, FUNC3(pset.db));
				else
					FUNC9(FUNC5("You are connected to database \"%s\" as user \"%s\" via socket in \"%s\" at port \"%s\".\n"),
						   db, FUNC4(pset.db), host, FUNC3(pset.db));
			}
			else
			{
				if (hostaddr && *hostaddr && FUNC10(host, hostaddr) != 0)
					FUNC9(FUNC5("You are connected to database \"%s\" as user \"%s\" on host \"%s\" (address \"%s\") at port \"%s\".\n"),
						   db, FUNC4(pset.db), host, hostaddr, FUNC3(pset.db));
				else
					FUNC9(FUNC5("You are connected to database \"%s\" as user \"%s\" on host \"%s\" at port \"%s\".\n"),
						   db, FUNC4(pset.db), host, FUNC3(pset.db));
			}
			FUNC8();
			FUNC7();
		}
	}

	return PSQL_CMD_SKIP_LINE;
}