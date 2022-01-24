#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  bindir; int /*<<< orphan*/  bin_version; } ;
typedef  TYPE_1__ ClusterInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__ new_cluster ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(ClusterInfo *cluster)
{
	struct stat statBuf;

	/* check bindir */
	if (FUNC4(cluster->bindir, &statBuf) != 0)
		FUNC3(PG_FATAL, "check for \"%s\" failed: %s\n",
					  cluster->bindir, FUNC5(errno));
	else if (!FUNC1(statBuf.st_mode))
		FUNC3(PG_FATAL, "\"%s\" is not a directory\n",
					  cluster->bindir);

	FUNC6(cluster->bindir, "postgres");
	FUNC6(cluster->bindir, "pg_controldata");
	FUNC6(cluster->bindir, "pg_ctl");

	/*
	 * Fetch the binary version after checking for the existence of pg_ctl.
	 * This way we report a useful error if the pg_ctl binary used for version
	 * fetching is missing/broken.
	 */
	FUNC2(cluster);

	/* pg_resetxlog has been renamed to pg_resetwal in version 10 */
	if (FUNC0(cluster->bin_version) < 1000)
		FUNC6(cluster->bindir, "pg_resetxlog");
	else
		FUNC6(cluster->bindir, "pg_resetwal");

	if (cluster == &new_cluster)
	{
		/*
		 * These binaries are only needed for the target version. pg_dump and
		 * pg_dumpall are used to dump the old cluster, but must be of the
		 * target version.
		 */
		FUNC6(cluster->bindir, "initdb");
		FUNC6(cluster->bindir, "pg_dump");
		FUNC6(cluster->bindir, "pg_dumpall");
		FUNC6(cluster->bindir, "pg_restore");
		FUNC6(cluster->bindir, "psql");
		FUNC6(cluster->bindir, "vacuumdb");
	}
}