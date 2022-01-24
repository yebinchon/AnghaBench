#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zip_prop_handler ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_4__ {int /*<<< orphan*/ * prop_handler; } ;
typedef  TYPE_1__ ze_zip_object ;

/* Variables and functions */
 scalar_t__ IS_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(zend_object *object, zend_string *name, int type, void **cache_slot) /* {{{ */
{
	ze_zip_object *obj;
	zip_prop_handler *hnd = NULL;
	int retval = 0;

	obj = FUNC1(object);

	if (obj->prop_handler != NULL) {
		hnd = FUNC3(obj->prop_handler, name);
	}

	if (hnd != NULL) {
		zval tmp, *prop;

		if (type == 2) {
			retval = 1;
		} else if ((prop = FUNC2(obj, hnd, &tmp)) != NULL) {
			if (type == 1) {
				retval = FUNC4(&tmp);
			} else if (type == 0) {
				retval = (FUNC0(tmp) != IS_NULL);
			}
		}

		FUNC6(&tmp);
	} else {
		retval = FUNC5(object, name, type, cache_slot);
	}

	return retval;
}