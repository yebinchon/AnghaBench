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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* progname ; 

__attribute__((used)) static void
FUNC1(void)
{
	FUNC0("%s allows PostgreSQL warm standby servers to be configured.\n\n", progname);
	FUNC0("Usage:\n");
	FUNC0("  %s [OPTION]... ARCHIVELOCATION NEXTWALFILE XLOGFILEPATH [RESTARTWALFILE]\n", progname);
	FUNC0("\nOptions:\n");
	FUNC0("  -c                 copy file from archive (default)\n");
	FUNC0("  -d                 generate lots of debugging output (testing only)\n");
	FUNC0("  -k NUMFILESTOKEEP  if RESTARTWALFILE is not used, remove files prior to limit\n"
		   "                     (0 keeps all)\n");
	FUNC0("  -l                 does nothing; use of link is now deprecated\n");
	FUNC0("  -r MAXRETRIES      max number of times to retry, with progressive wait\n"
		   "                     (default=3)\n");
	FUNC0("  -s SLEEPTIME       seconds to wait between file checks (min=1, max=60,\n"
		   "                     default=5)\n");
	FUNC0("  -t TRIGGERFILE     trigger file to initiate failover (no default)\n");
	FUNC0("  -V, --version      output version information, then exit\n");
	FUNC0("  -w MAXWAITTIME     max seconds to wait for a file (0=no limit) (default=0)\n");
	FUNC0("  -?, --help         show this help, then exit\n");
	FUNC0("\n"
		   "Main intended use as restore_command in postgresql.conf:\n"
		   "  restore_command = 'pg_standby [OPTION]... ARCHIVELOCATION %%f %%p %%r'\n"
		   "e.g.\n"
		   "  restore_command = 'pg_standby /mnt/server/archiverdir %%f %%p %%r'\n");
	FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n");
}