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
struct TYPE_2__ {int /*<<< orphan*/ * db; int /*<<< orphan*/  cur_cmd_interactive; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  EXIT_BADCONN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_1__ pset ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bool
FUNC11(void)
{
	bool		OK;

	OK = FUNC0();
	if (!OK)
	{
		if (!pset.cur_cmd_interactive)
		{
			FUNC10("connection to server was lost");
			FUNC8(EXIT_BADCONN);
		}

		FUNC9(stderr, "%s", FUNC6("The connection to the server was lost. Attempting reset: "));
		FUNC2(pset.db);
		OK = FUNC0();
		if (!OK)
		{
			FUNC9(stderr, "%s", FUNC6("Failed.\n"));

			/*
			 * Transition to having no connection.  Keep this bit in sync with
			 * do_connect().
			 */
			FUNC1(pset.db);
			pset.db = NULL;
			FUNC3();
			FUNC5();
		}
		else
		{
			FUNC9(stderr, "%s", FUNC6("Succeeded.\n"));

			/*
			 * Re-sync, just in case anything changed.  Keep this in sync with
			 * do_connect().
			 */
			FUNC4();
			FUNC7(false); /* Must be after SyncVariables */
		}
	}

	return OK;
}