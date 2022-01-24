#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 long FUNC0 (long,int) ; 
 int /*<<< orphan*/  PGC_POSTMASTER ; 
 int /*<<< orphan*/  PGC_S_ENV_VAR ; 
 long STACK_DEPTH_SLOP ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC2 () ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,long) ; 

__attribute__((used)) static void
FUNC5(void)
{
	char	   *env;
	long		stack_rlimit;

	env = FUNC3("PGPORT");
	if (env != NULL)
		FUNC1("port", env, PGC_POSTMASTER, PGC_S_ENV_VAR);

	env = FUNC3("PGDATESTYLE");
	if (env != NULL)
		FUNC1("datestyle", env, PGC_POSTMASTER, PGC_S_ENV_VAR);

	env = FUNC3("PGCLIENTENCODING");
	if (env != NULL)
		FUNC1("client_encoding", env, PGC_POSTMASTER, PGC_S_ENV_VAR);

	/*
	 * rlimit isn't exactly an "environment variable", but it behaves about
	 * the same.  If we can identify the platform stack depth rlimit, increase
	 * default stack depth setting up to whatever is safe (but at most 2MB).
	 */
	stack_rlimit = FUNC2();
	if (stack_rlimit > 0)
	{
		long		new_limit = (stack_rlimit - STACK_DEPTH_SLOP) / 1024L;

		if (new_limit > 100)
		{
			char		limbuf[16];

			new_limit = FUNC0(new_limit, 2048);
			FUNC4(limbuf, "%ld", new_limit);
			FUNC1("max_stack_depth", limbuf,
							PGC_POSTMASTER, PGC_S_ENV_VAR);
		}
	}
}