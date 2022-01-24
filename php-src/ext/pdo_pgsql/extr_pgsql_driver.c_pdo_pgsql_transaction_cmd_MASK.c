#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ pdo_pgsql_db_handle ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const char *cmd, pdo_dbh_t *dbh)
{
	pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
	PGresult *res;
	int ret = 1;

	res = FUNC1(H->server, cmd);

	if (FUNC2(res) != PGRES_COMMAND_OK) {
		FUNC3(dbh, FUNC2(res), FUNC4(res));
		ret = 0;
	}

	FUNC0(res);
	return ret;
}