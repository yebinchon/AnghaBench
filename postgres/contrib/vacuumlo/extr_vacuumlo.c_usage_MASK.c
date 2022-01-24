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

__attribute__((used)) static void
FUNC1(const char *progname)
{
	FUNC0("%s removes unreferenced large objects from databases.\n\n", progname);
	FUNC0("Usage:\n  %s [OPTION]... DBNAME...\n\n", progname);
	FUNC0("Options:\n");
	FUNC0("  -l, --limit=LIMIT         commit after removing each LIMIT large objects\n");
	FUNC0("  -n, --dry-run             don't remove large objects, just show what would be done\n");
	FUNC0("  -v, --verbose             write a lot of progress messages\n");
	FUNC0("  -V, --version             output version information, then exit\n");
	FUNC0("  -?, --help                show this help, then exit\n");
	FUNC0("\nConnection options:\n");
	FUNC0("  -h, --host=HOSTNAME       database server host or socket directory\n");
	FUNC0("  -p, --port=PORT           database server port\n");
	FUNC0("  -U, --username=USERNAME   user name to connect as\n");
	FUNC0("  -w, --no-password         never prompt for password\n");
	FUNC0("  -W, --password            force password prompt\n");
	FUNC0("\n");
	FUNC0("Report bugs to <pgsql-bugs@lists.postgresql.org>.\n");
}