#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  query ;
struct TYPE_5__ {int /*<<< orphan*/  major_version; } ;
struct TYPE_4__ {int num_old_tablespaces; char** old_tablespaces; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int QUERY_ALLOC ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_2__ old_cluster ; 
 TYPE_1__ os_info ; 
 scalar_t__ FUNC9 (int) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*) ; 
 scalar_t__ FUNC13 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

__attribute__((used)) static void
FUNC15(void)
{
	PGconn	   *conn = FUNC7(&old_cluster, "template1");
	PGresult   *res;
	int			tblnum;
	int			i_spclocation;
	char		query[QUERY_ALLOC];

	FUNC12(query, sizeof(query),
			 "SELECT	%s "
			 "FROM	pg_catalog.pg_tablespace "
			 "WHERE	spcname != 'pg_default' AND "
			 "		spcname != 'pg_global'",
	/* 9.2 removed the spclocation column */
			 (FUNC0(old_cluster.major_version) <= 901) ?
			 "spclocation" : "pg_catalog.pg_tablespace_location(oid) AS spclocation");

	res = FUNC8(conn, "%s", query);

	if ((os_info.num_old_tablespaces = FUNC5(res)) != 0)
		os_info.old_tablespaces = (char **) FUNC9(
													  os_info.num_old_tablespaces * sizeof(char *));
	else
		os_info.old_tablespaces = NULL;

	i_spclocation = FUNC3(res, "spclocation");

	for (tblnum = 0; tblnum < os_info.num_old_tablespaces; tblnum++)
	{
		struct stat statBuf;

		os_info.old_tablespaces[tblnum] = FUNC10(
													FUNC4(res, tblnum, i_spclocation));

		/*
		 * Check that the tablespace path exists and is a directory.
		 * Effectively, this is checking only for tables/indexes in
		 * non-existent tablespace directories.  Databases located in
		 * non-existent tablespaces already throw a backend error.
		 * Non-existent tablespace directories can occur when a data directory
		 * that contains user tablespaces is moved as part of pg_upgrade
		 * preparation and the symbolic links are not updated.
		 */
		if (FUNC13(os_info.old_tablespaces[tblnum], &statBuf) != 0)
		{
			if (errno == ENOENT)
				FUNC11(PG_FATAL,
							  "tablespace directory \"%s\" does not exist\n",
							  os_info.old_tablespaces[tblnum]);
			else
				FUNC11(PG_FATAL,
							  "could not stat tablespace directory \"%s\": %s\n",
							  os_info.old_tablespaces[tblnum], FUNC14(errno));
		}
		if (!FUNC6(statBuf.st_mode))
			FUNC11(PG_FATAL,
						  "tablespace path \"%s\" is not a directory\n",
						  os_info.old_tablespaces[tblnum]);
	}

	FUNC1(res);

	FUNC2(conn);

	return;
}