#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  topt; } ;
struct TYPE_4__ {TYPE_1__ popt; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* DEFAULT_FIELD_SEP ; 
 char const* DEF_PGPORT_STR ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC5 (char**) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 TYPE_2__ pset ; 

void
FUNC8(unsigned short int pager)
{
	const char *env;
	const char *user;
	char	   *errstr;
	FILE	   *output;

	/* Find default user, in case we need it. */
	user = FUNC6("PGUSER");
	if (!user)
	{
		user = FUNC5(&errstr);
		if (!user)
		{
			FUNC7("%s", errstr);
			FUNC3(EXIT_FAILURE);
		}
	}

	/*
	 * Keep this line count in sync with the number of lines printed below!
	 * Use "psql --help=options | wc" to count correctly.
	 */
	output = FUNC1(62, pager ? &(pset.popt.topt) : NULL);

	FUNC4(output, FUNC2("psql is the PostgreSQL interactive terminal.\n\n"));
	FUNC4(output, FUNC2("Usage:\n"));
	FUNC4(output, FUNC2("  psql [OPTION]... [DBNAME [USERNAME]]\n\n"));

	FUNC4(output, FUNC2("General options:\n"));
	/* Display default database */
	env = FUNC6("PGDATABASE");
	if (!env)
		env = user;
	FUNC4(output, FUNC2("  -c, --command=COMMAND    run only single command (SQL or internal) and exit\n"));
	FUNC4(output, FUNC2("  -d, --dbname=DBNAME      database name to connect to (default: \"%s\")\n"), env);
	FUNC4(output, FUNC2("  -f, --file=FILENAME      execute commands from file, then exit\n"));
	FUNC4(output, FUNC2("  -l, --list               list available databases, then exit\n"));
	FUNC4(output, FUNC2("  -v, --set=, --variable=NAME=VALUE\n"
					  "                           set psql variable NAME to VALUE\n"
					  "                           (e.g., -v ON_ERROR_STOP=1)\n"));
	FUNC4(output, FUNC2("  -V, --version            output version information, then exit\n"));
	FUNC4(output, FUNC2("  -X, --no-psqlrc          do not read startup file (~/.psqlrc)\n"));
	FUNC4(output, FUNC2("  -1 (\"one\"), --single-transaction\n"
					  "                           execute as a single transaction (if non-interactive)\n"));
	FUNC4(output, FUNC2("  -?, --help[=options]     show this help, then exit\n"));
	FUNC4(output, FUNC2("      --help=commands      list backslash commands, then exit\n"));
	FUNC4(output, FUNC2("      --help=variables     list special variables, then exit\n"));

	FUNC4(output, FUNC2("\nInput and output options:\n"));
	FUNC4(output, FUNC2("  -a, --echo-all           echo all input from script\n"));
	FUNC4(output, FUNC2("  -b, --echo-errors        echo failed commands\n"));
	FUNC4(output, FUNC2("  -e, --echo-queries       echo commands sent to server\n"));
	FUNC4(output, FUNC2("  -E, --echo-hidden        display queries that internal commands generate\n"));
	FUNC4(output, FUNC2("  -L, --log-file=FILENAME  send session log to file\n"));
	FUNC4(output, FUNC2("  -n, --no-readline        disable enhanced command line editing (readline)\n"));
	FUNC4(output, FUNC2("  -o, --output=FILENAME    send query results to file (or |pipe)\n"));
	FUNC4(output, FUNC2("  -q, --quiet              run quietly (no messages, only query output)\n"));
	FUNC4(output, FUNC2("  -s, --single-step        single-step mode (confirm each query)\n"));
	FUNC4(output, FUNC2("  -S, --single-line        single-line mode (end of line terminates SQL command)\n"));

	FUNC4(output, FUNC2("\nOutput format options:\n"));
	FUNC4(output, FUNC2("  -A, --no-align           unaligned table output mode\n"));
	FUNC4(output, FUNC2("      --csv                CSV (Comma-Separated Values) table output mode\n"));
	FUNC4(output, FUNC2("  -F, --field-separator=STRING\n"
					  "                           field separator for unaligned output (default: \"%s\")\n"),
			DEFAULT_FIELD_SEP);
	FUNC4(output, FUNC2("  -H, --html               HTML table output mode\n"));
	FUNC4(output, FUNC2("  -P, --pset=VAR[=ARG]     set printing option VAR to ARG (see \\pset command)\n"));
	FUNC4(output, FUNC2("  -R, --record-separator=STRING\n"
					  "                           record separator for unaligned output (default: newline)\n"));
	FUNC4(output, FUNC2("  -t, --tuples-only        print rows only\n"));
	FUNC4(output, FUNC2("  -T, --table-attr=TEXT    set HTML table tag attributes (e.g., width, border)\n"));
	FUNC4(output, FUNC2("  -x, --expanded           turn on expanded table output\n"));
	FUNC4(output, FUNC2("  -z, --field-separator-zero\n"
					  "                           set field separator for unaligned output to zero byte\n"));
	FUNC4(output, FUNC2("  -0, --record-separator-zero\n"
					  "                           set record separator for unaligned output to zero byte\n"));

	FUNC4(output, FUNC2("\nConnection options:\n"));
	/* Display default host */
	env = FUNC6("PGHOST");
	FUNC4(output, FUNC2("  -h, --host=HOSTNAME      database server host or socket directory (default: \"%s\")\n"),
			env ? env : FUNC2("local socket"));
	/* Display default port */
	env = FUNC6("PGPORT");
	FUNC4(output, FUNC2("  -p, --port=PORT          database server port (default: \"%s\")\n"),
			env ? env : DEF_PGPORT_STR);
	/* Display default user */
	env = FUNC6("PGUSER");
	if (!env)
		env = user;
	FUNC4(output, FUNC2("  -U, --username=USERNAME  database user name (default: \"%s\")\n"), env);
	FUNC4(output, FUNC2("  -w, --no-password        never prompt for password\n"));
	FUNC4(output, FUNC2("  -W, --password           force password prompt (should happen automatically)\n"));

	FUNC4(output, FUNC2("\nFor more information, type \"\\?\" (for internal commands) or \"\\help\" (for SQL\n"
					  "commands) from within psql, or consult the psql section in the PostgreSQL\n"
					  "documentation.\n\n"));
	FUNC4(output, FUNC2("Report bugs to <pgsql-bugs@lists.postgresql.org>.\n"));

	FUNC0(output);
}