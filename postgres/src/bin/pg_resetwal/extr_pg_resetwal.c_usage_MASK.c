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
	FUNC1(FUNC0("%s resets the PostgreSQL write-ahead log.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n  %s [OPTION]... DATADIR\n\n"), progname);
	FUNC1(FUNC0("Options:\n"));
	FUNC1(FUNC0("  -c, --commit-timestamp-ids=XID,XID\n"
			 "                                 set oldest and newest transactions bearing\n"
			 "                                 commit timestamp (zero means no change)\n"));
	FUNC1(FUNC0(" [-D, --pgdata=]DATADIR          data directory\n"));
	FUNC1(FUNC0("  -e, --epoch=XIDEPOCH           set next transaction ID epoch\n"));
	FUNC1(FUNC0("  -f, --force                    force update to be done\n"));
	FUNC1(FUNC0("  -l, --next-wal-file=WALFILE    set minimum starting location for new WAL\n"));
	FUNC1(FUNC0("  -m, --multixact-ids=MXID,MXID  set next and oldest multitransaction ID\n"));
	FUNC1(FUNC0("  -n, --dry-run                  no update, just show what would be done\n"));
	FUNC1(FUNC0("  -o, --next-oid=OID             set next OID\n"));
	FUNC1(FUNC0("  -O, --multixact-offset=OFFSET  set next multitransaction offset\n"));
	FUNC1(FUNC0("  -V, --version                  output version information, then exit\n"));
	FUNC1(FUNC0("  -x, --next-transaction-id=XID  set next transaction ID\n"));
	FUNC1(FUNC0("      --wal-segsize=SIZE         size of WAL segments, in megabytes\n"));
	FUNC1(FUNC0("  -?, --help                     show this help, then exit\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}