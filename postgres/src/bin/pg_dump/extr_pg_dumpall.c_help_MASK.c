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
	FUNC1(FUNC0("%s extracts a PostgreSQL database cluster into an SQL script file.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]...\n"), progname);

	FUNC1(FUNC0("\nGeneral options:\n"));
	FUNC1(FUNC0("  -f, --file=FILENAME          output file name\n"));
	FUNC1(FUNC0("  -v, --verbose                verbose mode\n"));
	FUNC1(FUNC0("  -V, --version                output version information, then exit\n"));
	FUNC1(FUNC0("  --lock-wait-timeout=TIMEOUT  fail after waiting TIMEOUT for a table lock\n"));
	FUNC1(FUNC0("  -?, --help                   show this help, then exit\n"));
	FUNC1(FUNC0("\nOptions controlling the output content:\n"));
	FUNC1(FUNC0("  -a, --data-only              dump only the data, not the schema\n"));
	FUNC1(FUNC0("  -c, --clean                  clean (drop) databases before recreating\n"));
	FUNC1(FUNC0("  -E, --encoding=ENCODING      dump the data in encoding ENCODING\n"));
	FUNC1(FUNC0("  -g, --globals-only           dump only global objects, no databases\n"));
	FUNC1(FUNC0("  -O, --no-owner               skip restoration of object ownership\n"));
	FUNC1(FUNC0("  -r, --roles-only             dump only roles, no databases or tablespaces\n"));
	FUNC1(FUNC0("  -s, --schema-only            dump only the schema, no data\n"));
	FUNC1(FUNC0("  -S, --superuser=NAME         superuser user name to use in the dump\n"));
	FUNC1(FUNC0("  -t, --tablespaces-only       dump only tablespaces, no databases or roles\n"));
	FUNC1(FUNC0("  -x, --no-privileges          do not dump privileges (grant/revoke)\n"));
	FUNC1(FUNC0("  --binary-upgrade             for use by upgrade utilities only\n"));
	FUNC1(FUNC0("  --column-inserts             dump data as INSERT commands with column names\n"));
	FUNC1(FUNC0("  --disable-dollar-quoting     disable dollar quoting, use SQL standard quoting\n"));
	FUNC1(FUNC0("  --disable-triggers           disable triggers during data-only restore\n"));
	FUNC1(FUNC0("  --exclude-database=PATTERN   exclude databases whose name matches PATTERN\n"));
	FUNC1(FUNC0("  --extra-float-digits=NUM     override default setting for extra_float_digits\n"));
	FUNC1(FUNC0("  --if-exists                  use IF EXISTS when dropping objects\n"));
	FUNC1(FUNC0("  --inserts                    dump data as INSERT commands, rather than COPY\n"));
	FUNC1(FUNC0("  --load-via-partition-root    load partitions via the root table\n"));
	FUNC1(FUNC0("  --no-comments                do not dump comments\n"));
	FUNC1(FUNC0("  --no-publications            do not dump publications\n"));
	FUNC1(FUNC0("  --no-role-passwords          do not dump passwords for roles\n"));
	FUNC1(FUNC0("  --no-security-labels         do not dump security label assignments\n"));
	FUNC1(FUNC0("  --no-subscriptions           do not dump subscriptions\n"));
	FUNC1(FUNC0("  --no-sync                    do not wait for changes to be written safely to disk\n"));
	FUNC1(FUNC0("  --no-tablespaces             do not dump tablespace assignments\n"));
	FUNC1(FUNC0("  --no-unlogged-table-data     do not dump unlogged table data\n"));
	FUNC1(FUNC0("  --on-conflict-do-nothing     add ON CONFLICT DO NOTHING to INSERT commands\n"));
	FUNC1(FUNC0("  --quote-all-identifiers      quote all identifiers, even if not key words\n"));
	FUNC1(FUNC0("  --rows-per-insert=NROWS      number of rows per INSERT; implies --inserts\n"));
	FUNC1(FUNC0("  --use-set-session-authorization\n"
			 "                               use SET SESSION AUTHORIZATION commands instead of\n"
			 "                               ALTER OWNER commands to set ownership\n"));

	FUNC1(FUNC0("\nConnection options:\n"));
	FUNC1(FUNC0("  -d, --dbname=CONNSTR     connect using connection string\n"));
	FUNC1(FUNC0("  -h, --host=HOSTNAME      database server host or socket directory\n"));
	FUNC1(FUNC0("  -l, --database=DBNAME    alternative default database\n"));
	FUNC1(FUNC0("  -p, --port=PORT          database server port number\n"));
	FUNC1(FUNC0("  -U, --username=NAME      connect as specified database user\n"));
	FUNC1(FUNC0("  -w, --no-password        never prompt for password\n"));
	FUNC1(FUNC0("  -W, --password           force password prompt (should happen automatically)\n"));
	FUNC1(FUNC0("  --role=ROLENAME          do SET ROLE before dump\n"));

	FUNC1(FUNC0("\nIf -f/--file is not used, then the SQL script will be written to the standard\n"
			 "output.\n\n"));
	FUNC1(FUNC0("Report bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}