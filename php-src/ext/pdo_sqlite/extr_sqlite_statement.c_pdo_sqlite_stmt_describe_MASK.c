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
struct TYPE_7__ {TYPE_1__* columns; scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_stmt_t ;
struct TYPE_8__ {int /*<<< orphan*/  stmt; } ;
typedef  TYPE_3__ pdo_sqlite_stmt ;
struct TYPE_6__ {int maxlen; int /*<<< orphan*/  param_type; scalar_t__ precision; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDO_PARAM_STR ; 
#define  SQLITE3_TEXT 132 
#define  SQLITE_BLOB 131 
#define  SQLITE_FLOAT 130 
#define  SQLITE_INTEGER 129 
#define  SQLITE_NULL 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(pdo_stmt_t *stmt, int colno)
{
	pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;
	const char *str;

	if(colno >= FUNC1(S->stmt)) {
		/* error invalid column */
		FUNC0(stmt);
		return 0;
	}

	str = FUNC2(S->stmt, colno);
	stmt->columns[colno].name = FUNC5(str, FUNC4(str), 0);
	stmt->columns[colno].maxlen = 0xffffffff;
	stmt->columns[colno].precision = 0;

	switch (FUNC3(S->stmt, colno)) {
		case SQLITE_INTEGER:
		case SQLITE_FLOAT:
		case SQLITE3_TEXT:
		case SQLITE_BLOB:
		case SQLITE_NULL:
		default:
			stmt->columns[colno].param_type = PDO_PARAM_STR;
			break;
	}

	return 1;
}