#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_long ;
struct TYPE_4__ {scalar_t__ driver_data; } ;
typedef  TYPE_1__ pdo_stmt_t ;
struct TYPE_5__ {int /*<<< orphan*/  stmt; } ;
typedef  TYPE_2__ pdo_sqlite_stmt ;

/* Variables and functions */
#define  PDO_SQLITE_ATTR_READONLY_STATEMENT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(pdo_stmt_t *stmt, zend_long attr, zval *val)
{
	pdo_sqlite_stmt *S = (pdo_sqlite_stmt*)stmt->driver_data;

	switch (attr) {
		case PDO_SQLITE_ATTR_READONLY_STATEMENT:
			FUNC0(val);

#if SQLITE_VERSION_NUMBER >= 3007004
				if (sqlite3_stmt_readonly(S->stmt)) {
					ZVAL_TRUE(val);
				}
#endif
			break;

		default:
			return 0;
	}

	return 1;
}