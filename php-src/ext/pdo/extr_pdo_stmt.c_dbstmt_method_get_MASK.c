#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_11__ {TYPE_1__* ce; } ;
typedef  TYPE_3__ zend_object ;
typedef  int /*<<< orphan*/  zend_function ;
struct TYPE_12__ {TYPE_2__* dbh; int /*<<< orphan*/  database_object_handle; } ;
typedef  TYPE_4__ pdo_stmt_t ;
struct TYPE_10__ {int /*<<< orphan*/ ** cls_methods; } ;
struct TYPE_9__ {int /*<<< orphan*/  function_table; } ;

/* Variables and functions */
 size_t PDO_DBH_DRIVER_METHOD_KIND_STMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_4__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_function *FUNC7(zend_object **object_pp, zend_string *method_name, const zval *key)
{
	zend_function *fbc = NULL;
	zend_string *lc_method_name;
	zend_object *object = *object_pp;

	lc_method_name = FUNC6(method_name);

	if ((fbc = FUNC3(&object->ce->function_table, lc_method_name)) == NULL) {
		pdo_stmt_t *stmt = FUNC2(object);
		/* instance not created by PDO object */
		if (!stmt->dbh) {
			goto out;
		}
		/* not a pre-defined method, nor a user-defined method; check
		 * the driver specific methods */
		if (!stmt->dbh->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_STMT]) {
			if (!FUNC1(FUNC0(&stmt->database_object_handle),
				PDO_DBH_DRIVER_METHOD_KIND_STMT)
				|| !stmt->dbh->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_STMT]) {
				goto out;
			}
		}

		if ((fbc = FUNC3(stmt->dbh->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_STMT], lc_method_name)) == NULL) {
			goto out;
		}
		/* got it */
	}

out:
	FUNC5(lc_method_name, 0);
	if (!fbc) {
		fbc = FUNC4(object_pp, method_name, key);
	}
	return fbc;
}