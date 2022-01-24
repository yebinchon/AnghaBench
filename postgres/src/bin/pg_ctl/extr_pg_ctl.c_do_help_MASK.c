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
	FUNC1(FUNC0("%s is a utility to initialize, start, stop, or control a PostgreSQL server.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s init[db]   [-D DATADIR] [-s] [-o OPTIONS]\n"), progname);
	FUNC1(FUNC0("  %s start      [-D DATADIR] [-l FILENAME] [-W] [-t SECS] [-s]\n"
			 "                    [-o OPTIONS] [-p PATH] [-c]\n"), progname);
	FUNC1(FUNC0("  %s stop       [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]\n"), progname);
	FUNC1(FUNC0("  %s restart    [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]\n"
			 "                    [-o OPTIONS] [-c]\n"), progname);
	FUNC1(FUNC0("  %s reload     [-D DATADIR] [-s]\n"), progname);
	FUNC1(FUNC0("  %s status     [-D DATADIR]\n"), progname);
	FUNC1(FUNC0("  %s promote    [-D DATADIR] [-W] [-t SECS] [-s]\n"), progname);
	FUNC1(FUNC0("  %s logrotate  [-D DATADIR] [-s]\n"), progname);
	FUNC1(FUNC0("  %s kill       SIGNALNAME PID\n"), progname);
#ifdef WIN32
	printf(_("  %s register   [-D DATADIR] [-N SERVICENAME] [-U USERNAME] [-P PASSWORD]\n"
			 "                    [-S START-TYPE] [-e SOURCE] [-W] [-t SECS] [-s] [-o OPTIONS]\n"), progname);
	printf(_("  %s unregister [-N SERVICENAME]\n"), progname);
#endif

	FUNC1(FUNC0("\nCommon options:\n"));
	FUNC1(FUNC0("  -D, --pgdata=DATADIR   location of the database storage area\n"));
#ifdef WIN32
	printf(_("  -e SOURCE              event source for logging when running as a service\n"));
#endif
	FUNC1(FUNC0("  -s, --silent           only print errors, no informational messages\n"));
	FUNC1(FUNC0("  -t, --timeout=SECS     seconds to wait when using -w option\n"));
	FUNC1(FUNC0("  -V, --version          output version information, then exit\n"));
	FUNC1(FUNC0("  -w, --wait             wait until operation completes (default)\n"));
	FUNC1(FUNC0("  -W, --no-wait          do not wait until operation completes\n"));
	FUNC1(FUNC0("  -?, --help             show this help, then exit\n"));
	FUNC1(FUNC0("If the -D option is omitted, the environment variable PGDATA is used.\n"));

	FUNC1(FUNC0("\nOptions for start or restart:\n"));
#if defined(HAVE_GETRLIMIT) && defined(RLIMIT_CORE)
	printf(_("  -c, --core-files       allow postgres to produce core files\n"));
#else
	FUNC1(FUNC0("  -c, --core-files       not applicable on this platform\n"));
#endif
	FUNC1(FUNC0("  -l, --log=FILENAME     write (or append) server log to FILENAME\n"));
	FUNC1(FUNC0("  -o, --options=OPTIONS  command line options to pass to postgres\n"
			 "                         (PostgreSQL server executable) or initdb\n"));
	FUNC1(FUNC0("  -p PATH-TO-POSTGRES    normally not necessary\n"));
	FUNC1(FUNC0("\nOptions for stop or restart:\n"));
	FUNC1(FUNC0("  -m, --mode=MODE        MODE can be \"smart\", \"fast\", or \"immediate\"\n"));

	FUNC1(FUNC0("\nShutdown modes are:\n"));
	FUNC1(FUNC0("  smart       quit after all clients have disconnected\n"));
	FUNC1(FUNC0("  fast        quit directly, with proper shutdown (default)\n"));
	FUNC1(FUNC0("  immediate   quit without complete shutdown; will lead to recovery on restart\n"));

	FUNC1(FUNC0("\nAllowed signal names for kill:\n"));
	FUNC1("  ABRT HUP INT KILL QUIT TERM USR1 USR2\n");

#ifdef WIN32
	printf(_("\nOptions for register and unregister:\n"));
	printf(_("  -N SERVICENAME  service name with which to register PostgreSQL server\n"));
	printf(_("  -P PASSWORD     password of account to register PostgreSQL server\n"));
	printf(_("  -U USERNAME     user name of account to register PostgreSQL server\n"));
	printf(_("  -S START-TYPE   service start type to register PostgreSQL server\n"));

	printf(_("\nStart types are:\n"));
	printf(_("  auto       start service automatically during system startup (default)\n"));
	printf(_("  demand     start service on demand\n"));
#endif

	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}