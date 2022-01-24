#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  error_code; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_10__ {int errcode; char const* file; int line; int /*<<< orphan*/ * errmsg; } ;
struct TYPE_9__ {scalar_t__ stmt; TYPE_3__ einfo; } ;
typedef  TYPE_2__ pdo_mysql_stmt ;
typedef  TYPE_3__ pdo_mysql_error_info ;
struct TYPE_11__ {int /*<<< orphan*/  server; TYPE_3__ einfo; } ;
typedef  TYPE_4__ pdo_mysql_db_handle ;
typedef  int /*<<< orphan*/  pdo_error_type ;
struct TYPE_12__ {int /*<<< orphan*/  methods; int /*<<< orphan*/  is_persistent; int /*<<< orphan*/  error_code; scalar_t__ driver_data; } ;
typedef  TYPE_5__ pdo_dbh_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  PDO_ERR_NONE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int FUNC14(pdo_dbh_t *dbh, pdo_stmt_t *stmt, const char *file, int line)
{
	pdo_mysql_db_handle *H = (pdo_mysql_db_handle *)dbh->driver_data;
	pdo_error_type *pdo_err;
	pdo_mysql_error_info *einfo;
	pdo_mysql_stmt *S = NULL;

	FUNC0("_pdo_mysql_error");
	FUNC2("file=%s line=%d", file, line);
	if (stmt) {
		S = (pdo_mysql_stmt*)stmt->driver_data;
		pdo_err = &stmt->error_code;
		einfo   = &S->einfo;
	} else {
		pdo_err = &dbh->error_code;
		einfo   = &H->einfo;
	}

	if (S && S->stmt) {
		einfo->errcode = FUNC7(S->stmt);
	} else {
		einfo->errcode = FUNC4(H->server);
	}

	einfo->file = file;
	einfo->line = line;

	if (einfo->errmsg) {
		FUNC9(einfo->errmsg, dbh->is_persistent);
		einfo->errmsg = NULL;
	}

	if (einfo->errcode) {
		if (einfo->errcode == 2014) {
			einfo->errmsg = FUNC10(
				"Cannot execute queries while other unbuffered queries are active.  "
				"Consider using PDOStatement::fetchAll().  Alternatively, if your code "
				"is only ever going to run against mysql, you may enable query "
				"buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute.",
				dbh->is_persistent);
		} else if (einfo->errcode == 2057) {
			einfo->errmsg = FUNC10(
				"A stored procedure returning result sets of different size was called. "
				"This is not supported by libmysql",
				dbh->is_persistent);

		} else {
			einfo->errmsg = FUNC10(FUNC5(H->server), dbh->is_persistent);
		}
	} else { /* no error */
		FUNC12(*pdo_err, PDO_ERR_NONE);
		FUNC3(0);
	}

	if (S && S->stmt) {
		FUNC12(*pdo_err, FUNC8(S->stmt));
	} else {
		FUNC12(*pdo_err, FUNC6(H->server));
	}

	if (!dbh->methods) {
		FUNC1("Throwing exception");
		FUNC13(FUNC11(), einfo->errcode, "SQLSTATE[%s] [%d] %s",
				*pdo_err, einfo->errcode, einfo->errmsg);
	}

	FUNC3(einfo->errcode);
}