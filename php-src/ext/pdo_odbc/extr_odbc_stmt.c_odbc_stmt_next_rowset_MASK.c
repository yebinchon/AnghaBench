#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int column_count; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_7__ {scalar_t__ going_long; int /*<<< orphan*/  cols; int /*<<< orphan*/  stmt; } ;
typedef  TYPE_2__ pdo_odbc_stmt ;
typedef  int /*<<< orphan*/  pdo_odbc_column ;
typedef  scalar_t__ SQLSMALLINT ;
typedef  scalar_t__ SQLRETURN ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ SQL_SUCCESS ; 
 scalar_t__ SQL_SUCCESS_WITH_INFO ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(pdo_stmt_t *stmt)
{
	SQLRETURN rc;
	SQLSMALLINT colcount;
	pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;

	/* NOTE: can't guarantee that output or input/output parameters
	 * are set until this fella returns SQL_NO_DATA, according to
	 * MSDN ODBC docs */
	rc = FUNC0(S->stmt);

	if (rc != SQL_SUCCESS && rc != SQL_SUCCESS_WITH_INFO) {
		return 0;
	}

	FUNC3(stmt, S);
	/* how many columns do we have ? */
	FUNC1(S->stmt, &colcount);
	stmt->column_count = (int)colcount;
	S->cols = FUNC2(colcount, sizeof(pdo_odbc_column));
	S->going_long = 0;

	return 1;
}