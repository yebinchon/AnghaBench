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
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_2__ pset ; 

void
FUNC4(unsigned short int pager)
{
	FILE	   *output;

	/*
	 * Keep this line count in sync with the number of lines printed below!
	 * Use "psql --help=variables | wc" to count correctly; but notice that
	 * Windows builds currently print one more line than non-Windows builds.
	 * Using the larger number is fine.
	 */
	output = FUNC1(158, pager ? &(pset.popt.topt) : NULL);

	FUNC3(output, FUNC2("List of specially treated variables\n\n"));

	FUNC3(output, FUNC2("psql variables:\n"));
	FUNC3(output, FUNC2("Usage:\n"));
	FUNC3(output, FUNC2("  psql --set=NAME=VALUE\n  or \\set NAME VALUE inside psql\n\n"));

	FUNC3(output, FUNC2("  AUTOCOMMIT\n"
					  "    if set, successful SQL commands are automatically committed\n"));
	FUNC3(output, FUNC2("  COMP_KEYWORD_CASE\n"
					  "    determines the case used to complete SQL key words\n"
					  "    [lower, upper, preserve-lower, preserve-upper]\n"));
	FUNC3(output, FUNC2("  DBNAME\n"
					  "    the currently connected database name\n"));
	FUNC3(output, FUNC2("  ECHO\n"
					  "    controls what input is written to standard output\n"
					  "    [all, errors, none, queries]\n"));
	FUNC3(output, FUNC2("  ECHO_HIDDEN\n"
					  "    if set, display internal queries executed by backslash commands;\n"
					  "    if set to \"noexec\", just show them without execution\n"));
	FUNC3(output, FUNC2("  ENCODING\n"
					  "    current client character set encoding\n"));
	FUNC3(output, FUNC2("  ERROR\n"
					  "    true if last query failed, else false\n"));
	FUNC3(output, FUNC2("  FETCH_COUNT\n"
					  "    the number of result rows to fetch and display at a time (0 = unlimited)\n"));
	FUNC3(output, FUNC2("  HIDE_TABLEAM\n"
					  "    if set, table access methods are not displayed\n"));
	FUNC3(output, FUNC2("  HISTCONTROL\n"
					  "    controls command history [ignorespace, ignoredups, ignoreboth]\n"));
	FUNC3(output, FUNC2("  HISTFILE\n"
					  "    file name used to store the command history\n"));
	FUNC3(output, FUNC2("  HISTSIZE\n"
					  "    maximum number of commands to store in the command history\n"));
	FUNC3(output, FUNC2("  HOST\n"
					  "    the currently connected database server host\n"));
	FUNC3(output, FUNC2("  IGNOREEOF\n"
					  "    number of EOFs needed to terminate an interactive session\n"));
	FUNC3(output, FUNC2("  LASTOID\n"
					  "    value of the last affected OID\n"));
	FUNC3(output, FUNC2("  LAST_ERROR_MESSAGE\n"
					  "  LAST_ERROR_SQLSTATE\n"
					  "    message and SQLSTATE of last error, or empty string and \"00000\" if none\n"));
	FUNC3(output, FUNC2("  ON_ERROR_ROLLBACK\n"
					  "    if set, an error doesn't stop a transaction (uses implicit savepoints)\n"));
	FUNC3(output, FUNC2("  ON_ERROR_STOP\n"
					  "    stop batch execution after error\n"));
	FUNC3(output, FUNC2("  PORT\n"
					  "    server port of the current connection\n"));
	FUNC3(output, FUNC2("  PROMPT1\n"
					  "    specifies the standard psql prompt\n"));
	FUNC3(output, FUNC2("  PROMPT2\n"
					  "    specifies the prompt used when a statement continues from a previous line\n"));
	FUNC3(output, FUNC2("  PROMPT3\n"
					  "    specifies the prompt used during COPY ... FROM STDIN\n"));
	FUNC3(output, FUNC2("  QUIET\n"
					  "    run quietly (same as -q option)\n"));
	FUNC3(output, FUNC2("  ROW_COUNT\n"
					  "    number of rows returned or affected by last query, or 0\n"));
	FUNC3(output, FUNC2("  SERVER_VERSION_NAME\n"
					  "  SERVER_VERSION_NUM\n"
					  "    server's version (in short string or numeric format)\n"));
	FUNC3(output, FUNC2("  SHOW_CONTEXT\n"
					  "    controls display of message context fields [never, errors, always]\n"));
	FUNC3(output, FUNC2("  SINGLELINE\n"
					  "    if set, end of line terminates SQL commands (same as -S option)\n"));
	FUNC3(output, FUNC2("  SINGLESTEP\n"
					  "    single-step mode (same as -s option)\n"));
	FUNC3(output, FUNC2("  SQLSTATE\n"
					  "    SQLSTATE of last query, or \"00000\" if no error\n"));
	FUNC3(output, FUNC2("  USER\n"
					  "    the currently connected database user\n"));
	FUNC3(output, FUNC2("  VERBOSITY\n"
					  "    controls verbosity of error reports [default, verbose, terse, sqlstate]\n"));
	FUNC3(output, FUNC2("  VERSION\n"
					  "  VERSION_NAME\n"
					  "  VERSION_NUM\n"
					  "    psql's version (in verbose string, short string, or numeric format)\n"));

	FUNC3(output, FUNC2("\nDisplay settings:\n"));
	FUNC3(output, FUNC2("Usage:\n"));
	FUNC3(output, FUNC2("  psql --pset=NAME[=VALUE]\n  or \\pset NAME [VALUE] inside psql\n\n"));

	FUNC3(output, FUNC2("  border\n"
					  "    border style (number)\n"));
	FUNC3(output, FUNC2("  columns\n"
					  "    target width for the wrapped format\n"));
	FUNC3(output, FUNC2("  expanded (or x)\n"
					  "    expanded output [on, off, auto]\n"));
	FUNC3(output, FUNC2("  fieldsep\n"
					  "    field separator for unaligned output (default \"%s\")\n"),
			DEFAULT_FIELD_SEP);
	FUNC3(output, FUNC2("  fieldsep_zero\n"
					  "    set field separator for unaligned output to a zero byte\n"));
	FUNC3(output, FUNC2("  footer\n"
					  "    enable or disable display of the table footer [on, off]\n"));
	FUNC3(output, FUNC2("  format\n"
					  "    set output format [unaligned, aligned, wrapped, html, asciidoc, ...]\n"));
	FUNC3(output, FUNC2("  linestyle\n"
					  "    set the border line drawing style [ascii, old-ascii, unicode]\n"));
	FUNC3(output, FUNC2("  null\n"
					  "    set the string to be printed in place of a null value\n"));
	FUNC3(output, FUNC2("  numericlocale\n"
					  "    enable display of a locale-specific character to separate groups of digits\n"));
	FUNC3(output, FUNC2("  pager\n"
					  "    control when an external pager is used [yes, no, always]\n"));
	FUNC3(output, FUNC2("  recordsep\n"
					  "    record (line) separator for unaligned output\n"));
	FUNC3(output, FUNC2("  recordsep_zero\n"
					  "    set record separator for unaligned output to a zero byte\n"));
	FUNC3(output, FUNC2("  tableattr (or T)\n"
					  "    specify attributes for table tag in html format, or proportional\n"
					  "    column widths for left-aligned data types in latex-longtable format\n"));
	FUNC3(output, FUNC2("  title\n"
					  "    set the table title for subsequently printed tables\n"));
	FUNC3(output, FUNC2("  tuples_only\n"
					  "    if set, only actual table data is shown\n"));
	FUNC3(output, FUNC2("  unicode_border_linestyle\n"
					  "  unicode_column_linestyle\n"
					  "  unicode_header_linestyle\n"
					  "    set the style of Unicode line drawing [single, double]\n"));

	FUNC3(output, FUNC2("\nEnvironment variables:\n"));
	FUNC3(output, FUNC2("Usage:\n"));

#ifndef WIN32
	FUNC3(output, FUNC2("  NAME=VALUE [NAME=VALUE] psql ...\n  or \\setenv NAME [VALUE] inside psql\n\n"));
#else
	fprintf(output, _("  set NAME=VALUE\n  psql ...\n  or \\setenv NAME [VALUE] inside psql\n\n"));
#endif

	FUNC3(output, FUNC2("  COLUMNS\n"
					  "    number of columns for wrapped format\n"));
	FUNC3(output, FUNC2("  PGAPPNAME\n"
					  "    same as the application_name connection parameter\n"));
	FUNC3(output, FUNC2("  PGDATABASE\n"
					  "    same as the dbname connection parameter\n"));
	FUNC3(output, FUNC2("  PGHOST\n"
					  "    same as the host connection parameter\n"));
	FUNC3(output, FUNC2("  PGPASSWORD\n"
					  "    connection password (not recommended)\n"));
	FUNC3(output, FUNC2("  PGPASSFILE\n"
					  "    password file name\n"));
	FUNC3(output, FUNC2("  PGPORT\n"
					  "    same as the port connection parameter\n"));
	FUNC3(output, FUNC2("  PGUSER\n"
					  "    same as the user connection parameter\n"));
	FUNC3(output, FUNC2("  PSQL_EDITOR, EDITOR, VISUAL\n"
					  "    editor used by the \\e, \\ef, and \\ev commands\n"));
	FUNC3(output, FUNC2("  PSQL_EDITOR_LINENUMBER_ARG\n"
					  "    how to specify a line number when invoking the editor\n"));
	FUNC3(output, FUNC2("  PSQL_HISTORY\n"
					  "    alternative location for the command history file\n"));
	FUNC3(output, FUNC2("  PSQL_PAGER, PAGER\n"
					  "    name of external pager program\n"));
	FUNC3(output, FUNC2("  PSQLRC\n"
					  "    alternative location for the user's .psqlrc file\n"));
	FUNC3(output, FUNC2("  SHELL\n"
					  "    shell used by the \\! command\n"));
	FUNC3(output, FUNC2("  TMPDIR\n"
					  "    directory for temporary files\n"));

	FUNC0(output);
}