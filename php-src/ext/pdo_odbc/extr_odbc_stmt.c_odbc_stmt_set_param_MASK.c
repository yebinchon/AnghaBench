#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_long ;
struct TYPE_6__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_stmt_t ;
struct TYPE_5__ {char* what; int /*<<< orphan*/  last_state; int /*<<< orphan*/  last_err_msg; } ;
struct TYPE_7__ {TYPE_1__ einfo; int /*<<< orphan*/  assume_utf8; int /*<<< orphan*/  stmt; } ;
typedef  TYPE_3__ pdo_odbc_stmt ;
typedef  int /*<<< orphan*/  SQLRETURN ;

/* Variables and functions */
#define  PDO_ATTR_CURSOR_NAME 129 
#define  PDO_ODBC_ATTR_ASSUME_UTF8 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SQL_SUCCESS ; 
 int /*<<< orphan*/  SQL_SUCCESS_WITH_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(pdo_stmt_t *stmt, zend_long attr, zval *val)
{
	SQLRETURN rc;
	pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;

	switch (attr) {
		case PDO_ATTR_CURSOR_NAME:
			FUNC3(val);
			rc = FUNC0(S->stmt, FUNC2(val), FUNC1(val));

			if (rc == SQL_SUCCESS || rc == SQL_SUCCESS_WITH_INFO) {
				return 1;
			}
			FUNC4("SQLSetCursorName");
			return 0;

		case PDO_ODBC_ATTR_ASSUME_UTF8:
			S->assume_utf8 = FUNC6(val);
			return 0;
		default:
			FUNC5(S->einfo.last_err_msg, "Unknown Attribute");
			S->einfo.what = "setAttribute";
			FUNC5(S->einfo.last_state, "IM001");
			return -1;
	}
}