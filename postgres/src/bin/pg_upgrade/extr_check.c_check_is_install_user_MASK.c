#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  user; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  ClusterInfo ;

/* Variables and functions */
 int BOOTSTRAP_SUPERUSERID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  new_cluster ; 
 TYPE_1__ os_info ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(ClusterInfo *cluster)
{
	PGresult   *res;
	PGconn	   *conn = FUNC6(cluster, "template1");

	FUNC9("Checking database user is the install user");

	/* Can't use pg_authid because only superusers can view it. */
	res = FUNC7(conn,
							"SELECT rolsuper, oid "
							"FROM pg_catalog.pg_roles "
							"WHERE rolname = current_user "
							"AND rolname !~ '^pg_'");

	/*
	 * We only allow the install user in the new cluster (see comment below)
	 * and we preserve pg_authid.oid, so this must be the install user in the
	 * old cluster too.
	 */
	if (FUNC3(res) != 1 ||
		FUNC4(FUNC2(res, 0, 1)) != BOOTSTRAP_SUPERUSERID)
		FUNC8("database user \"%s\" is not the install user\n",
				 os_info.user);

	FUNC0(res);

	res = FUNC7(conn,
							"SELECT COUNT(*) "
							"FROM pg_catalog.pg_roles "
							"WHERE rolname !~ '^pg_'");

	if (FUNC3(res) != 1)
		FUNC8("could not determine the number of users\n");

	/*
	 * We only allow the install user in the new cluster because other defined
	 * users might match users defined in the old cluster and generate an
	 * error during pg_dump restore.
	 */
	if (cluster == &new_cluster && FUNC4(FUNC2(res, 0, 0)) != 1)
		FUNC8("Only the install user can be defined in the new cluster.\n");

	FUNC0(res);

	FUNC1(conn);

	FUNC5();
}