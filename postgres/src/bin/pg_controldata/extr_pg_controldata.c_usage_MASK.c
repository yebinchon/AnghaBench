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
	FUNC1(FUNC0("%s displays control information of a PostgreSQL database cluster.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION] [DATADIR]\n"), progname);
	FUNC1(FUNC0("\nOptions:\n"));
	FUNC1(FUNC0(" [-D, --pgdata=]DATADIR  data directory\n"));
	FUNC1(FUNC0("  -V, --version          output version information, then exit\n"));
	FUNC1(FUNC0("  -?, --help             show this help, then exit\n"));
	FUNC1(FUNC0("\nIf no data directory (DATADIR) is specified, "
			 "the environment variable PGDATA\nis used.\n\n"));
	FUNC1(FUNC0("Report bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}