#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ executed; scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_8__ {scalar_t__ stmt; struct TYPE_8__* convbuf; } ;
typedef  TYPE_2__ pdo_odbc_stmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  SQL_HANDLE_STMT ; 
 scalar_t__ SQL_NULL_HANDLE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(pdo_stmt_t *stmt)
{
	pdo_odbc_stmt *S = (pdo_odbc_stmt*)stmt->driver_data;

	if (S->stmt != SQL_NULL_HANDLE) {
		if (stmt->executed) {
			FUNC0(S->stmt);
		}
		FUNC1(SQL_HANDLE_STMT, S->stmt);
		S->stmt = SQL_NULL_HANDLE;
	}

	FUNC3(stmt, S);
	if (S->convbuf) {
		FUNC2(S->convbuf);
	}
	FUNC2(S);

	return 1;
}