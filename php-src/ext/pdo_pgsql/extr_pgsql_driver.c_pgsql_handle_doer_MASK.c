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
typedef  int zend_long ;
struct TYPE_5__ {int /*<<< orphan*/  pgoid; int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ pdo_pgsql_db_handle ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  scalar_t__ ExecStatusType ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_FATAL_ERROR ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_long FUNC9(pdo_dbh_t *dbh, const char *sql, size_t sql_len)
{
	pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
	PGresult *res;
	zend_long ret = 1;
	ExecStatusType qs;

	if (!(res = FUNC2(H->server, sql))) {
		/* fatal error */
		FUNC7(dbh, PGRES_FATAL_ERROR, NULL);
		return -1;
	}
	qs = FUNC4(res);
	if (qs != PGRES_COMMAND_OK && qs != PGRES_TUPLES_OK) {
		FUNC7(dbh, qs, FUNC8(res));
		FUNC0(res);
		return -1;
	}
	H->pgoid = FUNC3(res);
	if (qs == PGRES_COMMAND_OK) {
		FUNC5(ret, FUNC1(res));
	} else {
		ret = FUNC6(0);
	}
	FUNC0(res);

	return ret;
}