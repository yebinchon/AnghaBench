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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const char *progname)
{
	FUNC1(FUNC0("%s resynchronizes a PostgreSQL cluster with another copy of the cluster.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n  %s [OPTION]...\n\n"), progname);
	FUNC1(FUNC0("Options:\n"));
	FUNC1(FUNC0("  -D, --target-pgdata=DIRECTORY  existing data directory to modify\n"));
	FUNC1(FUNC0("      --source-pgdata=DIRECTORY  source data directory to synchronize with\n"));
	FUNC1(FUNC0("      --source-server=CONNSTR    source server to synchronize with\n"));
	FUNC1(FUNC0("  -R, --write-recovery-conf      write configuration for replication\n"
			 "                                 (requires --source-server)\n"));
	FUNC1(FUNC0("  -n, --dry-run                  stop before modifying anything\n"));
	FUNC1(FUNC0("  -N, --no-sync                  do not wait for changes to be written\n"
			 "                                 safely to disk\n"));
	FUNC1(FUNC0("  -P, --progress                 write progress messages\n"));
	FUNC1(FUNC0("      --no-ensure-shutdown       do not automatically fix unclean shutdown\n"));
	FUNC1(FUNC0("      --debug                    write a lot of debug messages\n"));
	FUNC1(FUNC0("  -V, --version                  output version information, then exit\n"));
	FUNC1(FUNC0("  -?, --help                     show this help, then exit\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}