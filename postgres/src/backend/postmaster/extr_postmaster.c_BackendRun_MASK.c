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
struct TYPE_3__ {int /*<<< orphan*/  user_name; int /*<<< orphan*/  database_name; } ;
typedef  TYPE_1__ Port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG3 ; 
 int /*<<< orphan*/  ExtraOptions ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  progname ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(Port *port)
{
	char	  **av;
	int			maxac;
	int			ac;
	int			i;

	/*
	 * Now, build the argv vector that will be given to PostgresMain.
	 *
	 * The maximum possible number of commandline arguments that could come
	 * from ExtraOptions is (strlen(ExtraOptions) + 1) / 2; see
	 * pg_split_opts().
	 */
	maxac = 2;					/* for fixed args supplied below */
	maxac += (FUNC8(ExtraOptions) + 1) / 2;

	av = (char **) FUNC1(TopMemoryContext,
									  maxac * sizeof(char *));
	ac = 0;

	av[ac++] = "postgres";

	/*
	 * Pass any backend switches specified with -o on the postmaster's own
	 * command line.  We assume these are secure.
	 */
	FUNC7(av, &ac, ExtraOptions);

	av[ac] = NULL;

	FUNC0(ac < maxac);

	/*
	 * Debug: print arguments being passed to backend
	 */
	FUNC4(DEBUG3,
			(FUNC5("%s child[%d]: starting with (",
							 progname, (int) FUNC6())));
	for (i = 0; i < ac; ++i)
		FUNC4(DEBUG3,
				(FUNC5("\t%s", av[i])));
	FUNC4(DEBUG3,
			(FUNC5(")")));

	/*
	 * Make sure we aren't in PostmasterContext anymore.  (We can't delete it
	 * just yet, though, because InitPostgres will need the HBA data.)
	 */
	FUNC2(TopMemoryContext);

	FUNC3(ac, av, port->database_name, port->user_name);
}