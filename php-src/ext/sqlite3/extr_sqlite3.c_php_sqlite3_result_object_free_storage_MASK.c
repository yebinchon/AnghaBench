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
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_5__ {int /*<<< orphan*/  zo; int /*<<< orphan*/  stmt_obj_zval; TYPE_1__* stmt_obj; } ;
typedef  TYPE_2__ php_sqlite3_result ;
struct TYPE_4__ {int /*<<< orphan*/  stmt; scalar_t__ initialised; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(zend_object *object) /* {{{ */
{
	php_sqlite3_result *intern = FUNC1(object);

	if (!intern) {
		return;
	}

	if (!FUNC0(intern->stmt_obj_zval)) {
		if (intern->stmt_obj && intern->stmt_obj->initialised) {
			FUNC2(intern->stmt_obj->stmt);
		}

		FUNC4(&intern->stmt_obj_zval);
	}

	FUNC3(&intern->zo);
}