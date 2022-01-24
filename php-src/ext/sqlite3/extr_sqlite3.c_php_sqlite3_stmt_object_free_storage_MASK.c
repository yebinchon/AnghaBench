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
struct TYPE_5__ {int /*<<< orphan*/  zo; int /*<<< orphan*/  db_obj_zval; int /*<<< orphan*/  stmt; TYPE_1__* db_obj; scalar_t__ initialised; int /*<<< orphan*/ * bound_params; } ;
typedef  TYPE_2__ php_sqlite3_stmt ;
struct TYPE_4__ {int /*<<< orphan*/  free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ php_sqlite3_compare_stmt_free ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int (*) (void*,void*)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(zend_object *object) /* {{{ */
{
	php_sqlite3_stmt *intern = FUNC2(object);

	if (!intern) {
		return;
	}

	if (intern->bound_params) {
		FUNC3(intern->bound_params);
		FUNC0(intern->bound_params);
		intern->bound_params = NULL;
	}

	if (intern->initialised) {
		FUNC4(&(intern->db_obj->free_list), intern->stmt,
			(int (*)(void *, void *)) php_sqlite3_compare_stmt_free);
	}

	if (!FUNC1(intern->db_obj_zval)) {
		FUNC6(&intern->db_obj_zval);
	}

	FUNC5(&intern->zo);
}