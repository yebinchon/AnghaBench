#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int port; } ;
struct TYPE_5__ {int port; } ;
struct TYPE_4__ {char* user; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 TYPE_3__ new_cluster ; 
 TYPE_2__ old_cluster ; 
 TYPE_1__ os_info ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(FUNC0("pg_upgrade upgrades a PostgreSQL cluster to a different major version.\n\n"));
	FUNC1(FUNC0("Usage:\n"));
	FUNC1(FUNC0("  pg_upgrade [OPTION]...\n\n"));
	FUNC1(FUNC0("Options:\n"));
	FUNC1(FUNC0("  -b, --old-bindir=BINDIR       old cluster executable directory\n"));
	FUNC1(FUNC0("  -B, --new-bindir=BINDIR       new cluster executable directory (default\n"
			 "                                same directory as pg_upgrade)\n"));
	FUNC1(FUNC0("  -c, --check                   check clusters only, don't change any data\n"));
	FUNC1(FUNC0("  -d, --old-datadir=DATADIR     old cluster data directory\n"));
	FUNC1(FUNC0("  -D, --new-datadir=DATADIR     new cluster data directory\n"));
	FUNC1(FUNC0("  -j, --jobs                    number of simultaneous processes or threads to use\n"));
	FUNC1(FUNC0("  -k, --link                    link instead of copying files to new cluster\n"));
	FUNC1(FUNC0("  -o, --old-options=OPTIONS     old cluster options to pass to the server\n"));
	FUNC1(FUNC0("  -O, --new-options=OPTIONS     new cluster options to pass to the server\n"));
	FUNC1(FUNC0("  -p, --old-port=PORT           old cluster port number (default %d)\n"), old_cluster.port);
	FUNC1(FUNC0("  -P, --new-port=PORT           new cluster port number (default %d)\n"), new_cluster.port);
	FUNC1(FUNC0("  -r, --retain                  retain SQL and log files after success\n"));
	FUNC1(FUNC0("  -s, --socketdir=DIR           socket directory to use (default current dir.)\n"));
	FUNC1(FUNC0("  -U, --username=NAME           cluster superuser (default \"%s\")\n"), os_info.user);
	FUNC1(FUNC0("  -v, --verbose                 enable verbose internal logging\n"));
	FUNC1(FUNC0("  -V, --version                 display version information, then exit\n"));
	FUNC1(FUNC0("  --clone                       clone instead of copying files to new cluster\n"));
	FUNC1(FUNC0("  -?, --help                    show this help, then exit\n"));
	FUNC1(FUNC0("\n"
			 "Before running pg_upgrade you must:\n"
			 "  create a new database cluster (using the new version of initdb)\n"
			 "  shutdown the postmaster servicing the old cluster\n"
			 "  shutdown the postmaster servicing the new cluster\n"));
	FUNC1(FUNC0("\n"
			 "When you run pg_upgrade, you must provide the following information:\n"
			 "  the data directory for the old cluster  (-d DATADIR)\n"
			 "  the data directory for the new cluster  (-D DATADIR)\n"
			 "  the \"bin\" directory for the old version (-b BINDIR)\n"
			 "  the \"bin\" directory for the new version (-B BINDIR)\n"));
	FUNC1(FUNC0("\n"
			 "For example:\n"
			 "  pg_upgrade -d oldCluster/data -D newCluster/data -b oldCluster/bin -B newCluster/bin\n"
			 "or\n"));
#ifndef WIN32
	FUNC1(FUNC0("  $ export PGDATAOLD=oldCluster/data\n"
			 "  $ export PGDATANEW=newCluster/data\n"
			 "  $ export PGBINOLD=oldCluster/bin\n"
			 "  $ export PGBINNEW=newCluster/bin\n"
			 "  $ pg_upgrade\n"));
#else
	printf(_("  C:\\> set PGDATAOLD=oldCluster/data\n"
			 "  C:\\> set PGDATANEW=newCluster/data\n"
			 "  C:\\> set PGBINOLD=oldCluster/bin\n"
			 "  C:\\> set PGBINNEW=newCluster/bin\n"
			 "  C:\\> pg_upgrade\n"));
#endif
	FUNC1(FUNC0("\nReport bugs to <pgsql-bugs@lists.postgresql.org>.\n"));
}