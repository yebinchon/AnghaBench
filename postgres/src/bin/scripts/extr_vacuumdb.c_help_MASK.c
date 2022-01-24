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
	FUNC1(FUNC0("%s cleans and analyzes a PostgreSQL database.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]... [DBNAME]\n"), progname);
	FUNC1(FUNC0("\nOptions:\n"));
	FUNC1(FUNC0("  -a, --all                       vacuum all databases\n"));
	FUNC1(FUNC0("  -d, --dbname=DBNAME             database to vacuum\n"));
	FUNC1(FUNC0("      --disable-page-skipping     disable all page-skipping behavior\n"));
	FUNC1(FUNC0("  -e, --echo                      show the commands being sent to the server\n"));
	FUNC1(FUNC0("  -f, --full                      do full vacuuming\n"));
	FUNC1(FUNC0("  -F, --freeze                    freeze row transaction information\n"));
	FUNC1(FUNC0("  -j, --jobs=NUM                  use this many concurrent connections to vacuum\n"));
	FUNC1(FUNC0("      --min-mxid-age=MXID_AGE     minimum multixact ID age of tables to vacuum\n"));
	FUNC1(FUNC0("      --min-xid-age=XID_AGE       minimum transaction ID age of tables to vacuum\n"));
	FUNC1(FUNC0("  -q, --quiet                     don't write any messages\n"));
	FUNC1(FUNC0("      --skip-locked               skip relations that cannot be immediately locked\n"));
	FUNC1(FUNC0("  -t, --table='TABLE[(COLUMNS)]'  vacuum specific table(s) only\n"));
	FUNC1(FUNC0("  -v, --verbose                   write a lot of output\n"));
	FUNC1(FUNC0("  -V, --version                   output version information, then exit\n"));
	FUNC1(FUNC0("  -z, --analyze                   update optimizer statistics\n"));
	FUNC1(FUNC0("  -Z, --analyze-only              only update optimizer statistics; no vacuum\n"));
	FUNC1(FUNC0("      --analyze-in-stages         only update optimizer statistics, in multiple\n"
			 "                                  stages for faster results; no vacuum\n"));
	FUNC1(FUNC0("  -?, --help                      show this help, then exit\n"));
	FUNC1(FUNC0("\nConnection options:\n"));
	FUNC1(FUNC0("  -h, --host=HOSTNAME       database server host or socket directory\n"));
	FUNC1(FUNC0("  -p, --port=PORT           database server port\n"));
	FUNC1(FUNC0("  -U, --username=USERNAME   user name to connect as\n"));
	FUNC1(FUNC0("  -w, --no-password         never prompt for password\n"));
	FUNC1(FUNC0("  -W, --password            force password prompt\n"));
	FUNC1(FUNC0("  --maintenance-db=DBNAME   alternate maintenance database\n"));
	FUNC1(FUNC0("\nRead the description of the SQL command VACUUM for details.\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}