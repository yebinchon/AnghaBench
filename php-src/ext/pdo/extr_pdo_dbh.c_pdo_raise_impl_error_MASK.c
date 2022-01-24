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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_5__ {char* error_code; } ;
typedef  TYPE_1__ pdo_stmt_t ;
typedef  char* pdo_error_type ;
struct TYPE_6__ {char* error_code; scalar_t__ error_mode; } ;
typedef  TYPE_2__ pdo_dbh_t ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ PDO_ERRMODE_EXCEPTION ; 
 scalar_t__ PDO_ERRMODE_SILENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char**,int /*<<< orphan*/ ,char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(pdo_dbh_t *dbh, pdo_stmt_t *stmt, const char *sqlstate, const char *supp) /* {{{ */
{
	pdo_error_type *pdo_err = &dbh->error_code;
	char *message = NULL;
	const char *msg;

	if (dbh && dbh->error_mode == PDO_ERRMODE_SILENT) {
#if 0
		/* BUG: if user is running in silent mode and hits an error at the driver level
		 * when they use the PDO methods to call up the error information, they may
		 * get bogus information */
		return;
#endif
	}

	if (stmt) {
		pdo_err = &stmt->error_code;
	}

	FUNC10(*pdo_err, sqlstate, 6);

	/* hash sqlstate to error messages */
	msg = FUNC5(*pdo_err);
	if (!msg) {
		msg = "<<Unknown error>>";
	}

	if (supp) {
		FUNC9(&message, 0, "SQLSTATE[%s]: %s: %s", *pdo_err, msg, supp);
	} else {
		FUNC9(&message, 0, "SQLSTATE[%s]: %s", *pdo_err, msg);
	}

	if (dbh && dbh->error_mode != PDO_ERRMODE_EXCEPTION) {
		FUNC6(NULL, E_WARNING, "%s", message);
	} else {
		zval ex, info;
		zend_class_entry *def_ex = FUNC8(1), *pdo_ex = FUNC7();

		FUNC4(&ex, pdo_ex);

		FUNC13(def_ex, &ex, "message", sizeof("message")-1, message);
		FUNC13(def_ex, &ex, "code", sizeof("code")-1, *pdo_err);

		FUNC2(&info);

		FUNC1(&info, *pdo_err);
		FUNC0(&info, 0);
		FUNC12(pdo_ex, &ex, "errorInfo", sizeof("errorInfo")-1, &info);
		FUNC14(&info);

		FUNC11(&ex);
	}

	if (message) {
		FUNC3(message);
	}
}