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
	FUNC1(FUNC0("%s reindexes a PostgreSQL database.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]... [DBNAME]\n"), progname);
	FUNC1(FUNC0("\nOptions:\n"));
	FUNC1(FUNC0("  -a, --all                 reindex all databases\n"));
	FUNC1(FUNC0("      --concurrently        reindex concurrently\n"));
	FUNC1(FUNC0("  -d, --dbname=DBNAME       database to reindex\n"));
	FUNC1(FUNC0("  -e, --echo                show the commands being sent to the server\n"));
	FUNC1(FUNC0("  -i, --index=INDEX         recreate specific index(es) only\n"));
	FUNC1(FUNC0("  -j, --jobs=NUM            use this many concurrent connections to reindex\n"));
	FUNC1(FUNC0("  -q, --quiet               don't write any messages\n"));
	FUNC1(FUNC0("  -s, --system              reindex system catalogs\n"));
	FUNC1(FUNC0("  -S, --schema=SCHEMA       reindex specific schema(s) only\n"));
	FUNC1(FUNC0("  -t, --table=TABLE         reindex specific table(s) only\n"));
	FUNC1(FUNC0("  -v, --verbose             write a lot of output\n"));
	FUNC1(FUNC0("  -V, --version             output version information, then exit\n"));
	FUNC1(FUNC0("  -?, --help                show this help, then exit\n"));
	FUNC1(FUNC0("\nConnection options:\n"));
	FUNC1(FUNC0("  -h, --host=HOSTNAME       database server host or socket directory\n"));
	FUNC1(FUNC0("  -p, --port=PORT           database server port\n"));
	FUNC1(FUNC0("  -U, --username=USERNAME   user name to connect as\n"));
	FUNC1(FUNC0("  -w, --no-password         never prompt for password\n"));
	FUNC1(FUNC0("  -W, --password            force password prompt\n"));
	FUNC1(FUNC0("  --maintenance-db=DBNAME   alternate maintenance database\n"));
	FUNC1(FUNC0("\nRead the description of the SQL command REINDEX for details.\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}