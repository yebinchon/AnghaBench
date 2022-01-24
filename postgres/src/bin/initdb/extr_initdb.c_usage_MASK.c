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
	FUNC1(FUNC0("%s initializes a PostgreSQL database cluster.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]... [DATADIR]\n"), progname);
	FUNC1(FUNC0("\nOptions:\n"));
	FUNC1(FUNC0("  -A, --auth=METHOD         default authentication method for local connections\n"));
	FUNC1(FUNC0("      --auth-host=METHOD    default authentication method for local TCP/IP connections\n"));
	FUNC1(FUNC0("      --auth-local=METHOD   default authentication method for local-socket connections\n"));
	FUNC1(FUNC0(" [-D, --pgdata=]DATADIR     location for this database cluster\n"));
	FUNC1(FUNC0("  -E, --encoding=ENCODING   set default encoding for new databases\n"));
	FUNC1(FUNC0("  -g, --allow-group-access  allow group read/execute on data directory\n"));
	FUNC1(FUNC0("      --locale=LOCALE       set default locale for new databases\n"));
	FUNC1(FUNC0("      --lc-collate=, --lc-ctype=, --lc-messages=LOCALE\n"
			 "      --lc-monetary=, --lc-numeric=, --lc-time=LOCALE\n"
			 "                            set default locale in the respective category for\n"
			 "                            new databases (default taken from environment)\n"));
	FUNC1(FUNC0("      --no-locale           equivalent to --locale=C\n"));
	FUNC1(FUNC0("      --pwfile=FILE         read password for the new superuser from file\n"));
	FUNC1(FUNC0("  -T, --text-search-config=CFG\n"
			 "                            default text search configuration\n"));
	FUNC1(FUNC0("  -U, --username=NAME       database superuser name\n"));
	FUNC1(FUNC0("  -W, --pwprompt            prompt for a password for the new superuser\n"));
	FUNC1(FUNC0("  -X, --waldir=WALDIR       location for the write-ahead log directory\n"));
	FUNC1(FUNC0("      --wal-segsize=SIZE    size of WAL segments, in megabytes\n"));
	FUNC1(FUNC0("\nLess commonly used options:\n"));
	FUNC1(FUNC0("  -d, --debug               generate lots of debugging output\n"));
	FUNC1(FUNC0("  -k, --data-checksums      use data page checksums\n"));
	FUNC1(FUNC0("  -L DIRECTORY              where to find the input files\n"));
	FUNC1(FUNC0("  -n, --no-clean            do not clean up after errors\n"));
	FUNC1(FUNC0("  -N, --no-sync             do not wait for changes to be written safely to disk\n"));
	FUNC1(FUNC0("  -s, --show                show internal settings\n"));
	FUNC1(FUNC0("  -S, --sync-only           only sync data directory\n"));
	FUNC1(FUNC0("\nOther options:\n"));
	FUNC1(FUNC0("  -V, --version             output version information, then exit\n"));
	FUNC1(FUNC0("  -?, --help                show this help, then exit\n"));
	FUNC1(FUNC0("\nIf the data directory is not specified, the environment variable PGDATA\n"
			 "is used.\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}