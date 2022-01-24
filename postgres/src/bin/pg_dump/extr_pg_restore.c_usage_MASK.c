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
	FUNC1(FUNC0("%s restores a PostgreSQL database from an archive created by pg_dump.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]... [FILE]\n"), progname);

	FUNC1(FUNC0("\nGeneral options:\n"));
	FUNC1(FUNC0("  -d, --dbname=NAME        connect to database name\n"));
	FUNC1(FUNC0("  -f, --file=FILENAME      output file name (- for stdout)\n"));
	FUNC1(FUNC0("  -F, --format=c|d|t       backup file format (should be automatic)\n"));
	FUNC1(FUNC0("  -l, --list               print summarized TOC of the archive\n"));
	FUNC1(FUNC0("  -v, --verbose            verbose mode\n"));
	FUNC1(FUNC0("  -V, --version            output version information, then exit\n"));
	FUNC1(FUNC0("  -?, --help               show this help, then exit\n"));

	FUNC1(FUNC0("\nOptions controlling the restore:\n"));
	FUNC1(FUNC0("  -a, --data-only              restore only the data, no schema\n"));
	FUNC1(FUNC0("  -c, --clean                  clean (drop) database objects before recreating\n"));
	FUNC1(FUNC0("  -C, --create                 create the target database\n"));
	FUNC1(FUNC0("  -e, --exit-on-error          exit on error, default is to continue\n"));
	FUNC1(FUNC0("  -I, --index=NAME             restore named index\n"));
	FUNC1(FUNC0("  -j, --jobs=NUM               use this many parallel jobs to restore\n"));
	FUNC1(FUNC0("  -L, --use-list=FILENAME      use table of contents from this file for\n"
			 "                               selecting/ordering output\n"));
	FUNC1(FUNC0("  -n, --schema=NAME            restore only objects in this schema\n"));
	FUNC1(FUNC0("  -N, --exclude-schema=NAME    do not restore objects in this schema\n"));
	FUNC1(FUNC0("  -O, --no-owner               skip restoration of object ownership\n"));
	FUNC1(FUNC0("  -P, --function=NAME(args)    restore named function\n"));
	FUNC1(FUNC0("  -s, --schema-only            restore only the schema, no data\n"));
	FUNC1(FUNC0("  -S, --superuser=NAME         superuser user name to use for disabling triggers\n"));
	FUNC1(FUNC0("  -t, --table=NAME             restore named relation (table, view, etc.)\n"));
	FUNC1(FUNC0("  -T, --trigger=NAME           restore named trigger\n"));
	FUNC1(FUNC0("  -x, --no-privileges          skip restoration of access privileges (grant/revoke)\n"));
	FUNC1(FUNC0("  -1, --single-transaction     restore as a single transaction\n"));
	FUNC1(FUNC0("  --disable-triggers           disable triggers during data-only restore\n"));
	FUNC1(FUNC0("  --enable-row-security        enable row security\n"));
	FUNC1(FUNC0("  --if-exists                  use IF EXISTS when dropping objects\n"));
	FUNC1(FUNC0("  --no-comments                do not restore comments\n"));
	FUNC1(FUNC0("  --no-data-for-failed-tables  do not restore data of tables that could not be\n"
			 "                               created\n"));
	FUNC1(FUNC0("  --no-publications            do not restore publications\n"));
	FUNC1(FUNC0("  --no-security-labels         do not restore security labels\n"));
	FUNC1(FUNC0("  --no-subscriptions           do not restore subscriptions\n"));
	FUNC1(FUNC0("  --no-tablespaces             do not restore tablespace assignments\n"));
	FUNC1(FUNC0("  --section=SECTION            restore named section (pre-data, data, or post-data)\n"));
	FUNC1(FUNC0("  --strict-names               require table and/or schema include patterns to\n"
			 "                               match at least one entity each\n"));
	FUNC1(FUNC0("  --use-set-session-authorization\n"
			 "                               use SET SESSION AUTHORIZATION commands instead of\n"
			 "                               ALTER OWNER commands to set ownership\n"));

	FUNC1(FUNC0("\nConnection options:\n"));
	FUNC1(FUNC0("  -h, --host=HOSTNAME      database server host or socket directory\n"));
	FUNC1(FUNC0("  -p, --port=PORT          database server port number\n"));
	FUNC1(FUNC0("  -U, --username=NAME      connect as specified database user\n"));
	FUNC1(FUNC0("  -w, --no-password        never prompt for password\n"));
	FUNC1(FUNC0("  -W, --password           force password prompt (should happen automatically)\n"));
	FUNC1(FUNC0("  --role=ROLENAME          do SET ROLE before restore\n"));

	FUNC1(FUNC0("\n"
			 "The options -I, -n, -N, -P, -t, -T, and --section can be combined and specified\n"
			 "multiple times to select multiple objects.\n"));
	FUNC1(FUNC0("\nIf no input file name is supplied, then standard input is used.\n\n"));
	FUNC1(FUNC0("Report bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}