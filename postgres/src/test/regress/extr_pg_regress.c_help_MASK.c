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
	FUNC1(FUNC0("PostgreSQL regression test driver\n"));
	FUNC1(FUNC0("\n"));
	FUNC1(FUNC0("Usage:\n  %s [OPTION]... [EXTRA-TEST]...\n"), progname);
	FUNC1(FUNC0("\n"));
	FUNC1(FUNC0("Options:\n"));
	FUNC1(FUNC0("      --bindir=BINPATH          use BINPATH for programs that are run;\n"));
	FUNC1(FUNC0("                                if empty, use PATH from the environment\n"));
	FUNC1(FUNC0("      --config-auth=DATADIR     update authentication settings for DATADIR\n"));
	FUNC1(FUNC0("      --create-role=ROLE        create the specified role before testing\n"));
	FUNC1(FUNC0("      --dbname=DB               use database DB (default \"regression\")\n"));
	FUNC1(FUNC0("      --debug                   turn on debug mode in programs that are run\n"));
	FUNC1(FUNC0("      --dlpath=DIR              look for dynamic libraries in DIR\n"));
	FUNC1(FUNC0("      --encoding=ENCODING       use ENCODING as the encoding\n"));
	FUNC1(FUNC0("  -h, --help                    show this help, then exit\n"));
	FUNC1(FUNC0("      --inputdir=DIR            take input files from DIR (default \".\")\n"));
	FUNC1(FUNC0("      --launcher=CMD            use CMD as launcher of psql\n"));
	FUNC1(FUNC0("      --load-extension=EXT      load the named extension before running the\n"));
	FUNC1(FUNC0("                                tests; can appear multiple times\n"));
	FUNC1(FUNC0("      --load-language=LANG      load the named language before running the\n"));
	FUNC1(FUNC0("                                tests; can appear multiple times\n"));
	FUNC1(FUNC0("      --max-connections=N       maximum number of concurrent connections\n"));
	FUNC1(FUNC0("                                (default is 0, meaning unlimited)\n"));
	FUNC1(FUNC0("      --max-concurrent-tests=N  maximum number of concurrent tests in schedule\n"));
	FUNC1(FUNC0("                                (default is 0, meaning unlimited)\n"));
	FUNC1(FUNC0("      --outputdir=DIR           place output files in DIR (default \".\")\n"));
	FUNC1(FUNC0("      --schedule=FILE           use test ordering schedule from FILE\n"));
	FUNC1(FUNC0("                                (can be used multiple times to concatenate)\n"));
	FUNC1(FUNC0("      --temp-instance=DIR       create a temporary instance in DIR\n"));
	FUNC1(FUNC0("      --use-existing            use an existing installation\n"));
	FUNC1(FUNC0("  -V, --version                 output version information, then exit\n"));
	FUNC1(FUNC0("\n"));
	FUNC1(FUNC0("Options for \"temp-instance\" mode:\n"));
	FUNC1(FUNC0("      --no-locale               use C locale\n"));
	FUNC1(FUNC0("      --port=PORT               start postmaster on PORT\n"));
	FUNC1(FUNC0("      --temp-config=FILE        append contents of FILE to temporary config\n"));
	FUNC1(FUNC0("\n"));
	FUNC1(FUNC0("Options for using an existing installation:\n"));
	FUNC1(FUNC0("      --host=HOST               use postmaster running on HOST\n"));
	FUNC1(FUNC0("      --port=PORT               use postmaster running at PORT\n"));
	FUNC1(FUNC0("      --user=USER               connect as USER\n"));
	FUNC1(FUNC0("\n"));
	FUNC1(FUNC0("The exit status is 0 if all tests passed, 1 if some tests failed, and 2\n"));
	FUNC1(FUNC0("if the tests could not be run for some reason.\n"));
	FUNC1(FUNC0("\n"));
	FUNC1(FUNC0("Report bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}