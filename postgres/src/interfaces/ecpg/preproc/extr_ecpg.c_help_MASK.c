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
	FUNC1(FUNC0("%s is the PostgreSQL embedded SQL preprocessor for C programs.\n\n"),
		   progname);
	FUNC1(FUNC0("Usage:\n"
			 "  %s [OPTION]... FILE...\n\n"),
		   progname);
	FUNC1(FUNC0("Options:\n"));
	FUNC1(FUNC0("  -c             automatically generate C code from embedded SQL code;\n"
			 "                 this affects EXEC SQL TYPE\n"));
	FUNC1(FUNC0("  -C MODE        set compatibility mode; MODE can be one of\n"
			 "                 \"INFORMIX\", \"INFORMIX_SE\", \"ORACLE\"\n"));
#ifdef YYDEBUG
	printf(_("  -d             generate parser debug output\n"));
#endif
	FUNC1(FUNC0("  -D SYMBOL      define SYMBOL\n"));
	FUNC1(FUNC0("  -h             parse a header file, this option includes option \"-c\"\n"));
	FUNC1(FUNC0("  -i             parse system include files as well\n"));
	FUNC1(FUNC0("  -I DIRECTORY   search DIRECTORY for include files\n"));
	FUNC1(FUNC0("  -o OUTFILE     write result to OUTFILE\n"));
	FUNC1(FUNC0("  -r OPTION      specify run-time behavior; OPTION can be:\n"
			 "                 \"no_indicator\", \"prepare\", \"questionmarks\"\n"));
	FUNC1(FUNC0("  --regression   run in regression testing mode\n"));
	FUNC1(FUNC0("  -t             turn on autocommit of transactions\n"));
	FUNC1(FUNC0("  -V, --version  output version information, then exit\n"));
	FUNC1(FUNC0("  -?, --help     show this help, then exit\n"));
	FUNC1(FUNC0("\nIf no output file is specified, the name is formed by adding .c to the\n"
			 "input file name, after stripping off .pgc if present.\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}