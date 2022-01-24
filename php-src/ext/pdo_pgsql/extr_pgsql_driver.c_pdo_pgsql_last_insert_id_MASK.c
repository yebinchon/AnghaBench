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
typedef  scalar_t__ ExecStatusType ;

/* Variables and functions */
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC9(pdo_dbh_t *dbh, const char *name, size_t *len)
{
	pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
	char *id = NULL;
	PGresult *res;
	ExecStatusType status;

	if (name == NULL) {
		res = FUNC1(H->server, "SELECT LASTVAL()");
	} else {
		const char *q[1];
		q[0] = name;

		res = FUNC2(H->server, "SELECT CURRVAL($1)", 1, NULL, q, NULL, NULL, 0);
	}
	status = FUNC5(res);

	if (res && (status == PGRES_TUPLES_OK)) {
		id = FUNC6((char *)FUNC4(res, 0, 0));
		*len = FUNC3(res, 0, 0);
	} else {
		FUNC7(dbh, status, FUNC8(res));
	}

	if (res) {
		FUNC0(res);
	}

	return id;
}