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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int MAXPGPATH ; 
 int /*<<< orphan*/  PSQLHISTORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  finishInput ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ history_lines_added ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char const*) ; 
 TYPE_1__ pset ; 
 scalar_t__ FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ psql_history ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (char*) ; 
 int useHistory ; 
 int useReadline ; 
 int /*<<< orphan*/  FUNC12 () ; 

void
FUNC13(int flags)
{
#ifdef USE_READLINE
	if (flags & 1)
	{
		const char *histfile;
		char		home[MAXPGPATH];

		useReadline = true;

		/* these two things must be done in this order: */
		initialize_readline();
		rl_initialize();

		useHistory = true;
		using_history();
		history_lines_added = 0;

		histfile = GetVariable(pset.vars, "HISTFILE");

		if (histfile == NULL)
		{
			char	   *envhist;

			envhist = getenv("PSQL_HISTORY");
			if (envhist != NULL && strlen(envhist) > 0)
				histfile = envhist;
		}

		if (histfile == NULL)
		{
			if (get_home_path(home))
				psql_history = psprintf("%s/%s", home, PSQLHISTORY);
		}
		else
		{
			psql_history = pg_strdup(histfile);
			expand_tilde(&psql_history);
		}

		if (psql_history)
		{
			read_history(psql_history);
			decode_history();
		}
	}
#endif

	FUNC1(finishInput);
}