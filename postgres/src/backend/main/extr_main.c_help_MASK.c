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
	FUNC1(FUNC0("%s is the PostgreSQL server.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n  %s [OPTION]...\n\n"), progname);
	FUNC1(FUNC0("Options:\n"));
	FUNC1(FUNC0("  -B NBUFFERS        number of shared buffers\n"));
	FUNC1(FUNC0("  -c NAME=VALUE      set run-time parameter\n"));
	FUNC1(FUNC0("  -C NAME            print value of run-time parameter, then exit\n"));
	FUNC1(FUNC0("  -d 1-5             debugging level\n"));
	FUNC1(FUNC0("  -D DATADIR         database directory\n"));
	FUNC1(FUNC0("  -e                 use European date input format (DMY)\n"));
	FUNC1(FUNC0("  -F                 turn fsync off\n"));
	FUNC1(FUNC0("  -h HOSTNAME        host name or IP address to listen on\n"));
	FUNC1(FUNC0("  -i                 enable TCP/IP connections\n"));
	FUNC1(FUNC0("  -k DIRECTORY       Unix-domain socket location\n"));
#ifdef USE_SSL
	printf(_("  -l                 enable SSL connections\n"));
#endif
	FUNC1(FUNC0("  -N MAX-CONNECT     maximum number of allowed connections\n"));
	FUNC1(FUNC0("  -o OPTIONS         pass \"OPTIONS\" to each server process (obsolete)\n"));
	FUNC1(FUNC0("  -p PORT            port number to listen on\n"));
	FUNC1(FUNC0("  -s                 show statistics after each query\n"));
	FUNC1(FUNC0("  -S WORK-MEM        set amount of memory for sorts (in kB)\n"));
	FUNC1(FUNC0("  -V, --version      output version information, then exit\n"));
	FUNC1(FUNC0("  --NAME=VALUE       set run-time parameter\n"));
	FUNC1(FUNC0("  --describe-config  describe configuration parameters, then exit\n"));
	FUNC1(FUNC0("  -?, --help         show this help, then exit\n"));

	FUNC1(FUNC0("\nDeveloper options:\n"));
	FUNC1(FUNC0("  -f s|i|n|m|h       forbid use of some plan types\n"));
	FUNC1(FUNC0("  -n                 do not reinitialize shared memory after abnormal exit\n"));
	FUNC1(FUNC0("  -O                 allow system table structure changes\n"));
	FUNC1(FUNC0("  -P                 disable system indexes\n"));
	FUNC1(FUNC0("  -t pa|pl|ex        show timings after each query\n"));
	FUNC1(FUNC0("  -T                 send SIGSTOP to all backend processes if one dies\n"));
	FUNC1(FUNC0("  -W NUM             wait NUM seconds to allow attach from a debugger\n"));

	FUNC1(FUNC0("\nOptions for single-user mode:\n"));
	FUNC1(FUNC0("  --single           selects single-user mode (must be first argument)\n"));
	FUNC1(FUNC0("  DBNAME             database name (defaults to user name)\n"));
	FUNC1(FUNC0("  -d 0-5             override debugging level\n"));
	FUNC1(FUNC0("  -E                 echo statement before execution\n"));
	FUNC1(FUNC0("  -j                 do not use newline as interactive query delimiter\n"));
	FUNC1(FUNC0("  -r FILENAME        send stdout and stderr to given file\n"));

	FUNC1(FUNC0("\nOptions for bootstrapping mode:\n"));
	FUNC1(FUNC0("  --boot             selects bootstrapping mode (must be first argument)\n"));
	FUNC1(FUNC0("  DBNAME             database name (mandatory argument in bootstrapping mode)\n"));
	FUNC1(FUNC0("  -r FILENAME        send stdout and stderr to given file\n"));
	FUNC1(FUNC0("  -x NUM             internal use\n"));

	FUNC1(FUNC0("\nPlease read the documentation for the complete list of run-time\n"
			 "configuration settings and how to set them on the command line or in\n"
			 "the configuration file.\n\n"
			 "Report bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}