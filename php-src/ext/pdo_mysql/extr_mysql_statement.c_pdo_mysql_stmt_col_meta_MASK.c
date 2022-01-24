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
typedef  scalar_t__ zend_long ;
struct TYPE_5__ {scalar_t__ column_count; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {TYPE_3__* fields; int /*<<< orphan*/  result; int /*<<< orphan*/  stmt; } ;
typedef  TYPE_2__ pdo_mysql_stmt ;
struct TYPE_7__ {char* def; int flags; int type; char* table; } ;
typedef  TYPE_3__ MYSQL_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int MULTIPLE_KEY_FLAG ; 
#define  MYSQL_TYPE_BIT 134 
#define  MYSQL_TYPE_INT24 133 
#define  MYSQL_TYPE_LONG 132 
#define  MYSQL_TYPE_LONGLONG 131 
#define  MYSQL_TYPE_SHORT 130 
#define  MYSQL_TYPE_TINY 129 
#define  MYSQL_TYPE_YEAR 128 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PDO_PARAM_INT ; 
 int /*<<< orphan*/  PDO_PARAM_STR ; 
 int /*<<< orphan*/  SUCCESS ; 
 int UNIQUE_KEY_FLAG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(pdo_stmt_t *stmt, zend_long colno, zval *return_value) /* {{{ */
{
	pdo_mysql_stmt *S = (pdo_mysql_stmt*)stmt->driver_data;
	const MYSQL_FIELD *F;
	zval flags;
	char *str;

	FUNC3("pdo_mysql_stmt_col_meta");
	FUNC4("stmt=%p", S->stmt);
	if (!S->result) {
		FUNC5(FAILURE);
	}
	if (colno >= stmt->column_count) {
		/* error invalid column */
		FUNC5(FAILURE);
	}

	FUNC10(return_value);
	FUNC10(&flags);

	F = S->fields + colno;

	if (F->def) {
		FUNC7(return_value, "mysql:def", F->def);
	}
	if (FUNC1(F->flags)) {
		FUNC9(&flags, "not_null");
	}
	if (FUNC2(F->flags)) {
		FUNC9(&flags, "primary_key");
	}
	if (F->flags & MULTIPLE_KEY_FLAG) {
		FUNC9(&flags, "multiple_key");
	}
	if (F->flags & UNIQUE_KEY_FLAG) {
		FUNC9(&flags, "unique_key");
	}
	if (FUNC0(F->flags)) {
		FUNC9(&flags, "blob");
	}
	str = FUNC11(F->type);
	if (str) {
		FUNC7(return_value, "native_type", str);
	}

#ifdef PDO_USE_MYSQLND
	switch (F->type) {
		case MYSQL_TYPE_BIT:
		case MYSQL_TYPE_YEAR:
		case MYSQL_TYPE_TINY:
		case MYSQL_TYPE_SHORT:
		case MYSQL_TYPE_INT24:
		case MYSQL_TYPE_LONG:
#if SIZEOF_ZEND_LONG==8
		case MYSQL_TYPE_LONGLONG:
#endif
			add_assoc_long(return_value, "pdo_type", PDO_PARAM_INT);
			break;
		default:
			add_assoc_long(return_value, "pdo_type", PDO_PARAM_STR);
			break;
	}
#endif

	FUNC8(return_value, "flags", &flags);
	FUNC7(return_value, "table", (char *) (F->table?F->table : ""));

	FUNC5(SUCCESS);
}