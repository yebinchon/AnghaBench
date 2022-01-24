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
struct TYPE_5__ {int /*<<< orphan*/ * env; int /*<<< orphan*/ * dbc; } ;
typedef  TYPE_1__ pdo_odbc_db_handle ;
struct TYPE_6__ {int /*<<< orphan*/ * driver_data; int /*<<< orphan*/  is_persistent; } ;
typedef  TYPE_2__ pdo_dbh_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SQL_HANDLE_DBC ; 
 int /*<<< orphan*/  SQL_HANDLE_ENV ; 
 int /*<<< orphan*/ * SQL_NULL_HANDLE ; 
 int /*<<< orphan*/  SQL_ROLLBACK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(pdo_dbh_t *dbh)
{
	pdo_odbc_db_handle *H = (pdo_odbc_db_handle*)dbh->driver_data;

	if (H->dbc != SQL_NULL_HANDLE) {
		FUNC1(SQL_HANDLE_DBC, H->dbc, SQL_ROLLBACK);
		FUNC0(H->dbc);
		FUNC2(SQL_HANDLE_DBC, H->dbc);
		H->dbc = NULL;
	}
	FUNC2(SQL_HANDLE_ENV, H->env);
	H->env = NULL;
	FUNC3(H, dbh->is_persistent);
	dbh->driver_data = NULL;

	return 0;
}