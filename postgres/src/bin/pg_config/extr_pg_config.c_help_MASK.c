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
	FUNC1(FUNC0("\n%s provides information about the installed version of PostgreSQL.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]...\n\n"), progname);
	FUNC1(FUNC0("Options:\n"));
	FUNC1(FUNC0("  --bindir              show location of user executables\n"));
	FUNC1(FUNC0("  --docdir              show location of documentation files\n"));
	FUNC1(FUNC0("  --htmldir             show location of HTML documentation files\n"));
	FUNC1(FUNC0("  --includedir          show location of C header files of the client\n"
			 "                        interfaces\n"));
	FUNC1(FUNC0("  --pkgincludedir       show location of other C header files\n"));
	FUNC1(FUNC0("  --includedir-server   show location of C header files for the server\n"));
	FUNC1(FUNC0("  --libdir              show location of object code libraries\n"));
	FUNC1(FUNC0("  --pkglibdir           show location of dynamically loadable modules\n"));
	FUNC1(FUNC0("  --localedir           show location of locale support files\n"));
	FUNC1(FUNC0("  --mandir              show location of manual pages\n"));
	FUNC1(FUNC0("  --sharedir            show location of architecture-independent support files\n"));
	FUNC1(FUNC0("  --sysconfdir          show location of system-wide configuration files\n"));
	FUNC1(FUNC0("  --pgxs                show location of extension makefile\n"));
	FUNC1(FUNC0("  --configure           show options given to \"configure\" script when\n"
			 "                        PostgreSQL was built\n"));
	FUNC1(FUNC0("  --cc                  show CC value used when PostgreSQL was built\n"));
	FUNC1(FUNC0("  --cppflags            show CPPFLAGS value used when PostgreSQL was built\n"));
	FUNC1(FUNC0("  --cflags              show CFLAGS value used when PostgreSQL was built\n"));
	FUNC1(FUNC0("  --cflags_sl           show CFLAGS_SL value used when PostgreSQL was built\n"));
	FUNC1(FUNC0("  --ldflags             show LDFLAGS value used when PostgreSQL was built\n"));
	FUNC1(FUNC0("  --ldflags_ex          show LDFLAGS_EX value used when PostgreSQL was built\n"));
	FUNC1(FUNC0("  --ldflags_sl          show LDFLAGS_SL value used when PostgreSQL was built\n"));
	FUNC1(FUNC0("  --libs                show LIBS value used when PostgreSQL was built\n"));
	FUNC1(FUNC0("  --version             show the PostgreSQL version\n"));
	FUNC1(FUNC0("  -?, --help            show this help, then exit\n"));
	FUNC1(FUNC0("\nWith no arguments, all known items are shown.\n\n"));
	FUNC1(FUNC0("Report bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}