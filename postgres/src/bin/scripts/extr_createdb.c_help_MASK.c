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
	FUNC1(FUNC0("%s creates a PostgreSQL database.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]... [DBNAME] [DESCRIPTION]\n"), progname);
	FUNC1(FUNC0("\nOptions:\n"));
	FUNC1(FUNC0("  -D, --tablespace=TABLESPACE  default tablespace for the database\n"));
	FUNC1(FUNC0("  -e, --echo                   show the commands being sent to the server\n"));
	FUNC1(FUNC0("  -E, --encoding=ENCODING      encoding for the database\n"));
	FUNC1(FUNC0("  -l, --locale=LOCALE          locale settings for the database\n"));
	FUNC1(FUNC0("      --lc-collate=LOCALE      LC_COLLATE setting for the database\n"));
	FUNC1(FUNC0("      --lc-ctype=LOCALE        LC_CTYPE setting for the database\n"));
	FUNC1(FUNC0("  -O, --owner=OWNER            database user to own the new database\n"));
	FUNC1(FUNC0("  -T, --template=TEMPLATE      template database to copy\n"));
	FUNC1(FUNC0("  -V, --version                output version information, then exit\n"));
	FUNC1(FUNC0("  -?, --help                   show this help, then exit\n"));
	FUNC1(FUNC0("\nConnection options:\n"));
	FUNC1(FUNC0("  -h, --host=HOSTNAME          database server host or socket directory\n"));
	FUNC1(FUNC0("  -p, --port=PORT              database server port\n"));
	FUNC1(FUNC0("  -U, --username=USERNAME      user name to connect as\n"));
	FUNC1(FUNC0("  -w, --no-password            never prompt for password\n"));
	FUNC1(FUNC0("  -W, --password               force password prompt\n"));
	FUNC1(FUNC0("  --maintenance-db=DBNAME      alternate maintenance database\n"));
	FUNC1(FUNC0("\nBy default, a database with the same name as the current user is created.\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}