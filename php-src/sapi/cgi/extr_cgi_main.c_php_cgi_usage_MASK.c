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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static void FUNC2(char *argv0)
{
	char *prog;

	prog = FUNC1(argv0, '/');
	if (prog) {
		prog++;
	} else {
		prog = "php";
	}

	FUNC0(	"Usage: %s [-q] [-h] [-s] [-v] [-i] [-f <file>]\n"
				"       %s <file> [args...]\n"
				"  -a               Run interactively\n"
				"  -b <address:port>|<port> Bind Path for external FASTCGI Server mode\n"
				"  -C               Do not chdir to the script's directory\n"
				"  -c <path>|<file> Look for php.ini file in this directory\n"
				"  -n               No php.ini file will be used\n"
				"  -d foo[=bar]     Define INI entry foo with value 'bar'\n"
				"  -e               Generate extended information for debugger/profiler\n"
				"  -f <file>        Parse <file>.  Implies `-q'\n"
				"  -h               This help\n"
				"  -i               PHP information\n"
				"  -l               Syntax check only (lint)\n"
				"  -m               Show compiled in modules\n"
				"  -q               Quiet-mode.  Suppress HTTP Header output.\n"
				"  -s               Display colour syntax highlighted source.\n"
				"  -v               Version number\n"
				"  -w               Display source with stripped comments and whitespace.\n"
				"  -z <file>        Load Zend extension <file>.\n"
				"  -T <count>       Measure execution time of script repeated <count> times.\n",
				prog, prog);
}