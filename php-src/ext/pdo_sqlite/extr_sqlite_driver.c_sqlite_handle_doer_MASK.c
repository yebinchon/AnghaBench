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
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ pdo_sqlite_db_handle ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;

/* Variables and functions */
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static zend_long FUNC4(pdo_dbh_t *dbh, const char *sql, size_t sql_len)
{
	pdo_sqlite_db_handle *H = (pdo_sqlite_db_handle *)dbh->driver_data;
	char *errmsg = NULL;

	if (FUNC2(H->db, sql, NULL, NULL, &errmsg) != SQLITE_OK) {
		FUNC0(dbh);
		if (errmsg)
			FUNC3(errmsg);

		return -1;
	} else {
		return FUNC1(H->db);
	}
}