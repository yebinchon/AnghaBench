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
 char* DEFAULT_CONNECT_TIMEOUT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const char *progname)
{
	FUNC1(FUNC0("%s issues a connection check to a PostgreSQL database.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]...\n"), progname);

	FUNC1(FUNC0("\nOptions:\n"));
	FUNC1(FUNC0("  -d, --dbname=DBNAME      database name\n"));
	FUNC1(FUNC0("  -q, --quiet              run quietly\n"));
	FUNC1(FUNC0("  -V, --version            output version information, then exit\n"));
	FUNC1(FUNC0("  -?, --help               show this help, then exit\n"));

	FUNC1(FUNC0("\nConnection options:\n"));
	FUNC1(FUNC0("  -h, --host=HOSTNAME      database server host or socket directory\n"));
	FUNC1(FUNC0("  -p, --port=PORT          database server port\n"));
	FUNC1(FUNC0("  -t, --timeout=SECS       seconds to wait when attempting connection, 0 disables (default: %s)\n"), DEFAULT_CONNECT_TIMEOUT);
	FUNC1(FUNC0("  -U, --username=USERNAME  user name to connect as\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}