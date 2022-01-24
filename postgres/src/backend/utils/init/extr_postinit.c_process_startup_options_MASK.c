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
struct TYPE_3__ {int /*<<< orphan*/  guc_options; int /*<<< orphan*/ * cmdline_options; } ;
typedef  TYPE_1__ Port ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  GucContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PGC_BACKEND ; 
 int /*<<< orphan*/  PGC_SU_BACKEND ; 
 int /*<<< orphan*/  PGC_S_CLIENT ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char**,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(Port *port, bool am_superuser)
{
	GucContext	gucctx;
	ListCell   *gucopts;

	gucctx = am_superuser ? PGC_SU_BACKEND : PGC_BACKEND;

	/*
	 * First process any command-line switches that were included in the
	 * startup packet, if we are in a regular backend.
	 */
	if (port->cmdline_options != NULL)
	{
		/*
		 * The maximum possible number of commandline arguments that could
		 * come from port->cmdline_options is (strlen + 1) / 2; see
		 * pg_split_opts().
		 */
		char	  **av;
		int			maxac;
		int			ac;

		maxac = 2 + (FUNC8(port->cmdline_options) + 1) / 2;

		av = (char **) FUNC5(maxac * sizeof(char *));
		ac = 0;

		av[ac++] = "postgres";

		FUNC6(av, &ac, port->cmdline_options);

		av[ac] = NULL;

		FUNC0(ac < maxac);

		(void) FUNC7(ac, av, gucctx, NULL);
	}

	/*
	 * Process any additional GUC variable settings passed in startup packet.
	 * These are handled exactly like command-line variables.
	 */
	gucopts = FUNC3(port->guc_options);
	while (gucopts)
	{
		char	   *name;
		char	   *value;

		name = FUNC2(gucopts);
		gucopts = FUNC4(port->guc_options, gucopts);

		value = FUNC2(gucopts);
		gucopts = FUNC4(port->guc_options, gucopts);

		FUNC1(name, value, gucctx, PGC_S_CLIENT);
	}
}