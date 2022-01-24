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
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  ClusterInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  old_cluster ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(ClusterInfo *cluster)
{
	PGresult   *res;
	PGconn	   *conn = FUNC4(cluster, "template1");

	FUNC7("Checking for prepared transactions");

	res = FUNC5(conn,
							"SELECT * "
							"FROM pg_catalog.pg_prepared_xacts");

	if (FUNC2(res) != 0)
	{
		if (cluster == &old_cluster)
			FUNC6("The source cluster contains prepared transactions\n");
		else
			FUNC6("The target cluster contains prepared transactions\n");
	}

	FUNC0(res);

	FUNC1(conn);

	FUNC3();
}