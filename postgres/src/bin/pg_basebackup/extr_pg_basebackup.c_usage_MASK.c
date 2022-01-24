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
	FUNC1(FUNC0("%s takes a base backup of a running PostgreSQL server.\n\n"),
		   progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]...\n"), progname);
	FUNC1(FUNC0("\nOptions controlling the output:\n"));
	FUNC1(FUNC0("  -D, --pgdata=DIRECTORY receive base backup into directory\n"));
	FUNC1(FUNC0("  -F, --format=p|t       output format (plain (default), tar)\n"));
	FUNC1(FUNC0("  -r, --max-rate=RATE    maximum transfer rate to transfer data directory\n"
			 "                         (in kB/s, or use suffix \"k\" or \"M\")\n"));
	FUNC1(FUNC0("  -R, --write-recovery-conf\n"
			 "                         write configuration for replication\n"));
	FUNC1(FUNC0("  -T, --tablespace-mapping=OLDDIR=NEWDIR\n"
			 "                         relocate tablespace in OLDDIR to NEWDIR\n"));
	FUNC1(FUNC0("      --waldir=WALDIR    location for the write-ahead log directory\n"));
	FUNC1(FUNC0("  -X, --wal-method=none|fetch|stream\n"
			 "                         include required WAL files with specified method\n"));
	FUNC1(FUNC0("  -z, --gzip             compress tar output\n"));
	FUNC1(FUNC0("  -Z, --compress=0-9     compress tar output with given compression level\n"));
	FUNC1(FUNC0("\nGeneral options:\n"));
	FUNC1(FUNC0("  -c, --checkpoint=fast|spread\n"
			 "                         set fast or spread checkpointing\n"));
	FUNC1(FUNC0("  -C, --create-slot      create replication slot\n"));
	FUNC1(FUNC0("  -l, --label=LABEL      set backup label\n"));
	FUNC1(FUNC0("  -n, --no-clean         do not clean up after errors\n"));
	FUNC1(FUNC0("  -N, --no-sync          do not wait for changes to be written safely to disk\n"));
	FUNC1(FUNC0("  -P, --progress         show progress information\n"));
	FUNC1(FUNC0("  -S, --slot=SLOTNAME    replication slot to use\n"));
	FUNC1(FUNC0("  -v, --verbose          output verbose messages\n"));
	FUNC1(FUNC0("  -V, --version          output version information, then exit\n"));
	FUNC1(FUNC0("      --no-slot          prevent creation of temporary replication slot\n"));
	FUNC1(FUNC0("      --no-verify-checksums\n"
			 "                         do not verify checksums\n"));
	FUNC1(FUNC0("  -?, --help             show this help, then exit\n"));
	FUNC1(FUNC0("\nConnection options:\n"));
	FUNC1(FUNC0("  -d, --dbname=CONNSTR   connection string\n"));
	FUNC1(FUNC0("  -h, --host=HOSTNAME    database server host or socket directory\n"));
	FUNC1(FUNC0("  -p, --port=PORT        database server port number\n"));
	FUNC1(FUNC0("  -s, --status-interval=INTERVAL\n"
			 "                         time between status packets sent to server (in seconds)\n"));
	FUNC1(FUNC0("  -U, --username=NAME    connect as specified database user\n"));
	FUNC1(FUNC0("  -w, --no-password      never prompt for password\n"));
	FUNC1(FUNC0("  -W, --password         force password prompt (should happen automatically)\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}