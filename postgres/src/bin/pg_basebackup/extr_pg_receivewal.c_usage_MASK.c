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
 int standby_message_timeout ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(FUNC0("%s receives PostgreSQL streaming write-ahead logs.\n\n"),
		   progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]...\n"), progname);
	FUNC1(FUNC0("\nOptions:\n"));
	FUNC1(FUNC0("  -D, --directory=DIR    receive write-ahead log files into this directory\n"));
	FUNC1(FUNC0("  -E, --endpos=LSN       exit after receiving the specified LSN\n"));
	FUNC1(FUNC0("      --if-not-exists    do not error if slot already exists when creating a slot\n"));
	FUNC1(FUNC0("  -n, --no-loop          do not loop on connection lost\n"));
	FUNC1(FUNC0("      --no-sync          do not wait for changes to be written safely to disk\n"));
	FUNC1(FUNC0("  -s, --status-interval=SECS\n"
			 "                         time between status packets sent to server (default: %d)\n"), (standby_message_timeout / 1000));
	FUNC1(FUNC0("  -S, --slot=SLOTNAME    replication slot to use\n"));
	FUNC1(FUNC0("      --synchronous      flush write-ahead log immediately after writing\n"));
	FUNC1(FUNC0("  -v, --verbose          output verbose messages\n"));
	FUNC1(FUNC0("  -V, --version          output version information, then exit\n"));
	FUNC1(FUNC0("  -Z, --compress=0-9     compress logs with given compression level\n"));
	FUNC1(FUNC0("  -?, --help             show this help, then exit\n"));
	FUNC1(FUNC0("\nConnection options:\n"));
	FUNC1(FUNC0("  -d, --dbname=CONNSTR   connection string\n"));
	FUNC1(FUNC0("  -h, --host=HOSTNAME    database server host or socket directory\n"));
	FUNC1(FUNC0("  -p, --port=PORT        database server port number\n"));
	FUNC1(FUNC0("  -U, --username=NAME    connect as specified database user\n"));
	FUNC1(FUNC0("  -w, --no-password      never prompt for password\n"));
	FUNC1(FUNC0("  -W, --password         force password prompt (should happen automatically)\n"));
	FUNC1(FUNC0("\nOptional actions:\n"));
	FUNC1(FUNC0("      --create-slot      create a new replication slot (for the slot's name see --slot)\n"));
	FUNC1(FUNC0("      --drop-slot        drop the replication slot (for the slot's name see --slot)\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}