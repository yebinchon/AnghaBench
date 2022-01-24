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
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_long ;
struct TYPE_7__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_stmt_t ;
struct TYPE_8__ {int /*<<< orphan*/  name; int /*<<< orphan*/  stmt; TYPE_1__* H; } ;
typedef  TYPE_3__ pdo_firebird_stmt ;
struct TYPE_6__ {int /*<<< orphan*/  isc_status; } ;

/* Variables and functions */
#define  PDO_ATTR_CURSOR_NAME 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(pdo_stmt_t *stmt, zend_long attr, zval *val) /* {{{ */
{
	pdo_firebird_stmt *S = (pdo_firebird_stmt*)stmt->driver_data;

	switch (attr) {
		default:
			return 0;
		case PDO_ATTR_CURSOR_NAME:
			if (!FUNC4(val)) {
				return 0;
			}

			if (FUNC2(S->H->isc_status, &S->stmt, FUNC1(val),0)) {
				FUNC0(stmt);
				return 0;
			}
			FUNC3(S->name, FUNC1(val), sizeof(S->name));
			break;
	}
	return 1;
}