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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  zend_function ;
struct TYPE_6__ {TYPE_1__* inner; } ;
typedef  TYPE_2__ pdo_dbh_object_t ;
struct TYPE_5__ {int /*<<< orphan*/ * cls_methods; } ;

/* Variables and functions */
 size_t PDO_DBH_DRIVER_METHOD_KIND_DBH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_function *FUNC6(zend_object **object, zend_string *method_name, const zval *key)
{
	zend_function *fbc = NULL;
	pdo_dbh_object_t *dbh_obj = FUNC1(*object);
	zend_string *lc_method_name;

	if ((fbc = FUNC3(object, method_name, key)) == NULL) {
		/* not a pre-defined method, nor a user-defined method; check
		 * the driver specific methods */
		if (!dbh_obj->inner->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_DBH]) {
			if (!FUNC0(dbh_obj,
				PDO_DBH_DRIVER_METHOD_KIND_DBH)
				|| !dbh_obj->inner->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_DBH]) {
				goto out;
			}
		}

		lc_method_name = FUNC5(method_name);
		fbc = FUNC2(dbh_obj->inner->cls_methods[PDO_DBH_DRIVER_METHOD_KIND_DBH], lc_method_name);
		FUNC4(lc_method_name, 0);
	}

out:
	return fbc;
}