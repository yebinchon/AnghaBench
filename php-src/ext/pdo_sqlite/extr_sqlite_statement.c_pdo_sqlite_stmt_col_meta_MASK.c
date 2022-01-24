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
typedef  scalar_t__ zend_long ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {int /*<<< orphan*/  stmt; } ;
typedef  TYPE_2__ pdo_sqlite_stmt ;

/* Variables and functions */
 int FAILURE ; 
#define  SQLITE_BLOB 132 
#define  SQLITE_FLOAT 131 
#define  SQLITE_INTEGER 130 
#define  SQLITE_NULL 129 
#define  SQLITE_TEXT 128 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(pdo_stmt_t *stmt, zend_long colno, zval *return_value)
{
	pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;
	const char *str;
	zval flags;

	if (!S->stmt) {
		return FAILURE;
	}
	if(colno >= FUNC8(S->stmt)) {
		/* error invalid column */
		FUNC4(stmt);
		return FAILURE;
	}

	FUNC3(return_value);
	FUNC3(&flags);

	switch (FUNC7(S->stmt, colno)) {
		case SQLITE_NULL:
			FUNC0(return_value, "native_type", "null");
			break;

		case SQLITE_FLOAT:
			FUNC0(return_value, "native_type", "double");
			break;

		case SQLITE_BLOB:
			FUNC2(&flags, "blob");
		case SQLITE_TEXT:
			FUNC0(return_value, "native_type", "string");
			break;

		case SQLITE_INTEGER:
			FUNC0(return_value, "native_type", "integer");
			break;
	}

	str = FUNC5(S->stmt, colno);
	if (str) {
		FUNC0(return_value, "sqlite:decl_type", (char *)str);
	}

#ifdef HAVE_SQLITE3_COLUMN_TABLE_NAME
	str = sqlite3_column_table_name(S->stmt, colno);
	if (str) {
		add_assoc_string(return_value, "table", (char *)str);
	}
#endif

	FUNC1(return_value, "flags", &flags);

	return SUCCESS;
}