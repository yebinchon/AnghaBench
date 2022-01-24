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
	FUNC1(FUNC0("%s creates a new PostgreSQL role.\n\n"), progname);
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  %s [OPTION]... [ROLENAME]\n"), progname);
	FUNC1(FUNC0("\nOptions:\n"));
	FUNC1(FUNC0("  -c, --connection-limit=N  connection limit for role (default: no limit)\n"));
	FUNC1(FUNC0("  -d, --createdb            role can create new databases\n"));
	FUNC1(FUNC0("  -D, --no-createdb         role cannot create databases (default)\n"));
	FUNC1(FUNC0("  -e, --echo                show the commands being sent to the server\n"));
	FUNC1(FUNC0("  -g, --role=ROLE           new role will be a member of this role\n"));
	FUNC1(FUNC0("  -i, --inherit             role inherits privileges of roles it is a\n"
			 "                            member of (default)\n"));
	FUNC1(FUNC0("  -I, --no-inherit          role does not inherit privileges\n"));
	FUNC1(FUNC0("  -l, --login               role can login (default)\n"));
	FUNC1(FUNC0("  -L, --no-login            role cannot login\n"));
	FUNC1(FUNC0("  -P, --pwprompt            assign a password to new role\n"));
	FUNC1(FUNC0("  -r, --createrole          role can create new roles\n"));
	FUNC1(FUNC0("  -R, --no-createrole       role cannot create roles (default)\n"));
	FUNC1(FUNC0("  -s, --superuser           role will be superuser\n"));
	FUNC1(FUNC0("  -S, --no-superuser        role will not be superuser (default)\n"));
	FUNC1(FUNC0("  -V, --version             output version information, then exit\n"));
	FUNC1(FUNC0("  --interactive             prompt for missing role name and attributes rather\n"
			 "                            than using defaults\n"));
	FUNC1(FUNC0("  --replication             role can initiate replication\n"));
	FUNC1(FUNC0("  --no-replication          role cannot initiate replication\n"));
	FUNC1(FUNC0("  -?, --help                show this help, then exit\n"));
	FUNC1(FUNC0("\nConnection options:\n"));
	FUNC1(FUNC0("  -h, --host=HOSTNAME       database server host or socket directory\n"));
	FUNC1(FUNC0("  -p, --port=PORT           database server port\n"));
	FUNC1(FUNC0("  -U, --username=USERNAME   user name to connect as (not the one to create)\n"));
	FUNC1(FUNC0("  -w, --no-password         never prompt for password\n"));
	FUNC1(FUNC0("  -W, --password            force password prompt\n"));
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}