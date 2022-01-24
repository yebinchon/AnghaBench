#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char const* user; } ;
struct TYPE_11__ {char const* sockdir; int /*<<< orphan*/  port; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_2__ ClusterInfo ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_4__ os_info ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static PGconn *
FUNC6(ClusterInfo *cluster, const char *db_name)
{
	PQExpBufferData conn_opts;
	PGconn	   *conn;

	/* Build connection string with proper quoting */
	FUNC4(&conn_opts);
	FUNC3(&conn_opts, "dbname=");
	FUNC1(&conn_opts, db_name);
	FUNC3(&conn_opts, " user=");
	FUNC1(&conn_opts, os_info.user);
	FUNC2(&conn_opts, " port=%d", cluster->port);
	if (cluster->sockdir)
	{
		FUNC3(&conn_opts, " host=");
		FUNC1(&conn_opts, cluster->sockdir);
	}

	conn = FUNC0(conn_opts.data);
	FUNC5(&conn_opts);
	return conn;
}