#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  error_code; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_8__ {int errcode; char const* file; int line; int /*<<< orphan*/ * errmsg; } ;
typedef  TYPE_2__ pdo_pgsql_error_info ;
struct TYPE_9__ {int /*<<< orphan*/  server; TYPE_2__ einfo; } ;
typedef  TYPE_3__ pdo_pgsql_db_handle ;
typedef  int /*<<< orphan*/  pdo_error_type ;
struct TYPE_10__ {int /*<<< orphan*/  methods; int /*<<< orphan*/  is_persistent; int /*<<< orphan*/  error_code; scalar_t__ driver_data; } ;
typedef  TYPE_4__ pdo_dbh_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int FUNC8(pdo_dbh_t *dbh, pdo_stmt_t *stmt, int errcode, const char *sqlstate, const char *msg, const char *file, int line) /* {{{ */
{
	pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
	pdo_error_type *pdo_err = stmt ? &stmt->error_code : &dbh->error_code;
	pdo_pgsql_error_info *einfo = &H->einfo;
	char *errmsg = FUNC0(H->server);

	einfo->errcode = errcode;
	einfo->file = file;
	einfo->line = line;

	if (einfo->errmsg) {
		FUNC3(einfo->errmsg, dbh->is_persistent);
		einfo->errmsg = NULL;
	}

	if (sqlstate == NULL || FUNC6(sqlstate) >= sizeof(pdo_error_type)) {
		FUNC5(*pdo_err, "HY000");
	}
	else {
		FUNC5(*pdo_err, sqlstate);
	}

	if (msg) {
		einfo->errmsg = FUNC2(msg);
	}
	else if (errmsg) {
		einfo->errmsg = FUNC1(errmsg, dbh->is_persistent);
	}

	if (!dbh->methods) {
		FUNC7(FUNC4(), einfo->errcode, "SQLSTATE[%s] [%d] %s",
				*pdo_err, einfo->errcode, einfo->errmsg);
	}

	return errcode;
}