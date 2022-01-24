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
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_6__ {int /*<<< orphan*/  stmt; } ;
typedef  TYPE_2__ pdo_sqlite_stmt ;

/* Variables and functions */
#define  SQLITE_BLOB 129 
#define  SQLITE_NULL 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(pdo_stmt_t *stmt, int colno, char **ptr, size_t *len, int *caller_frees)
{
	pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;
	if (!S->stmt) {
		return 0;
	}
	if(colno >= FUNC5(S->stmt)) {
		/* error invalid column */
		FUNC0(stmt);
		return 0;
	}
	switch (FUNC4(S->stmt, colno)) {
		case SQLITE_NULL:
			*ptr = NULL;
			*len = 0;
			return 1;

		case SQLITE_BLOB:
			*ptr = (char*)FUNC1(S->stmt, colno);
			*len = FUNC2(S->stmt, colno);
			return 1;

		default:
			*ptr = (char*)FUNC3(S->stmt, colno);
			*len = FUNC2(S->stmt, colno);
			return 1;
	}
}