#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_long ;
struct TYPE_6__ {scalar_t__ errcode; } ;
struct TYPE_7__ {int /*<<< orphan*/  server; TYPE_1__ einfo; } ;
typedef  TYPE_2__ pdo_mysql_db_handle ;
struct TYPE_8__ {scalar_t__ driver_data; } ;
typedef  TYPE_3__ pdo_dbh_t ;
typedef  scalar_t__ my_ulonglong ;
typedef  int /*<<< orphan*/  MYSQL_RES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static zend_long FUNC10(pdo_dbh_t *dbh, const char *sql, size_t sql_len)
{
	pdo_mysql_db_handle *H = (pdo_mysql_db_handle *)dbh->driver_data;
	FUNC0("mysql_handle_doer");
	FUNC1("dbh=%p", dbh);
	FUNC1("sql=%.*s", (int)sql_len, sql);

	if (FUNC7(H->server, sql, sql_len)) {
		FUNC9(dbh);
		FUNC2(-1);
	} else {
		my_ulonglong c = FUNC3(H->server);
		if (c == (my_ulonglong) -1) {
			FUNC9(dbh);
			FUNC2(H->einfo.errcode ? -1 : 0);
		} else {

			/* MULTI_QUERY support - eat up all unfetched result sets */
			MYSQL_RES* result;
			while (FUNC5(H->server)) {
				if (FUNC6(H->server)) {
					FUNC2(1);
				}
				result = FUNC8(H->server);
				if (result) {
					FUNC4(result);
				}
			}
			FUNC2((int)c);
		}
	}
}