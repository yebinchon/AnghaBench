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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGC_POSTMASTER ; 
 int /*<<< orphan*/  PGC_S_OVERRIDE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int guc_dirty ; 
 int /*<<< orphan*/ * guc_variables ; 
 int num_guc_variables ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int reporting_enabled ; 

void
FUNC5(void)
{
	int			i;

	/*
	 * Before log_line_prefix could possibly receive a nonempty setting, make
	 * sure that timezone processing is minimally alive (see elog.c).
	 */
	FUNC4();

	/*
	 * Build sorted array of all GUC variables.
	 */
	FUNC3();

	/*
	 * Load all variables with their compiled-in defaults, and initialize
	 * status fields as needed.
	 */
	for (i = 0; i < num_guc_variables; i++)
	{
		FUNC1(guc_variables[i]);
	}

	guc_dirty = false;

	reporting_enabled = false;

	/*
	 * Prevent any attempt to override the transaction modes from
	 * non-interactive sources.
	 */
	FUNC2("transaction_isolation", "read committed",
					PGC_POSTMASTER, PGC_S_OVERRIDE);
	FUNC2("transaction_read_only", "no",
					PGC_POSTMASTER, PGC_S_OVERRIDE);
	FUNC2("transaction_deferrable", "no",
					PGC_POSTMASTER, PGC_S_OVERRIDE);

	/*
	 * For historical reasons, some GUC parameters can receive defaults from
	 * environment variables.  Process those settings.
	 */
	FUNC0();
}