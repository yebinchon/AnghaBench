#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;

/* Variables and functions */
#define  SQLITE3_TEXT 132 
#define  SQLITE_BLOB 131 
#define  SQLITE_FLOAT 130 
#define  SQLITE_INTEGER 129 
#define  SQLITE_NULL 128 
 int /*<<< orphan*/  ZEND_LONG_MAX ; 
 int /*<<< orphan*/  ZEND_LONG_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(sqlite3_stmt *stmt, int column, zval *data) /* {{{ */
{
	sqlite3_int64 val;

	switch (FUNC10(stmt, column)) {
		case SQLITE_INTEGER:
			val = FUNC8(stmt, column);
#if LONG_MAX <= 2147483647
			if (val > ZEND_LONG_MAX || val < ZEND_LONG_MIN) {
				FUNC4(data, (char *)FUNC9(stmt, column), FUNC6(stmt, column));
			} else {
#endif
				FUNC1(data, (zend_long) val);
#if LONG_MAX <= 2147483647
			}
#endif
			break;

		case SQLITE_FLOAT:
			FUNC0(data, FUNC7(stmt, column));
			break;

		case SQLITE_NULL:
			FUNC2(data);
			break;

		case SQLITE3_TEXT:
			FUNC3(data, (char*)FUNC9(stmt, column));
			break;

		case SQLITE_BLOB:
		default:
			FUNC4(data, (char*)FUNC5(stmt, column), FUNC6(stmt, column));
	}
}