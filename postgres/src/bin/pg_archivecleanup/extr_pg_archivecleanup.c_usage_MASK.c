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
 char* progname ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(FUNC0("%s removes older WAL files from PostgreSQL archives.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]... ARCHIVELOCATION OLDESTKEPTWALFILE\n"), progname);
	FUNC1(FUNC0("\nOptions:\n"));
	FUNC1(FUNC0("  -d             generate debug output (verbose mode)\n"));
	FUNC1(FUNC0("  -n             dry run, show the names of the files that would be removed\n"));
	FUNC1(FUNC0("  -V, --version  output version information, then exit\n"));
	FUNC1(FUNC0("  -x EXT         clean up files if they have this extension\n"));
	FUNC1(FUNC0("  -?, --help     show this help, then exit\n"));
	FUNC1(FUNC0("\n"
			 "For use as archive_cleanup_command in postgresql.conf:\n"
			 "  archive_cleanup_command = 'pg_archivecleanup [OPTION]... ARCHIVELOCATION %%r'\n"
			 "e.g.\n"
			 "  archive_cleanup_command = 'pg_archivecleanup /mnt/server/archiverdir %%r'\n"));
	FUNC1(FUNC0("\n"
			 "Or for use as a standalone archive cleaner:\n"
			 "e.g.\n"
			 "  pg_archivecleanup /mnt/server/archiverdir 000000010000000000000010.00000020.backup\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}