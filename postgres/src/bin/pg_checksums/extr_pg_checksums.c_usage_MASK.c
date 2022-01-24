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
	FUNC1(FUNC0("%s enables, disables, or verifies data checksums in a PostgreSQL database cluster.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]... [DATADIR]\n"), progname);
	FUNC1(FUNC0("\nOptions:\n"));
	FUNC1(FUNC0(" [-D, --pgdata=]DATADIR    data directory\n"));
	FUNC1(FUNC0("  -c, --check              check data checksums (default)\n"));
	FUNC1(FUNC0("  -d, --disable            disable data checksums\n"));
	FUNC1(FUNC0("  -e, --enable             enable data checksums\n"));
	FUNC1(FUNC0("  -f, --filenode=FILENODE  check only relation with specified filenode\n"));
	FUNC1(FUNC0("  -N, --no-sync            do not wait for changes to be written safely to disk\n"));
	FUNC1(FUNC0("  -P, --progress           show progress information\n"));
	FUNC1(FUNC0("  -v, --verbose            output verbose messages\n"));
	FUNC1(FUNC0("  -V, --version            output version information, then exit\n"));
	FUNC1(FUNC0("  -?, --help               show this help, then exit\n"));
	FUNC1(FUNC0("\nIf no data directory (DATADIR) is specified, "
			 "the environment variable PGDATA\nis used.\n\n"));
	FUNC1(FUNC0("Report bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}