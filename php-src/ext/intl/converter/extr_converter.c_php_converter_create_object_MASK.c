#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_3__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ php_converter_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__**) ; 

__attribute__((used)) static zend_object *FUNC2(zend_class_entry *ce) {
	php_converter_object *objval = NULL;
	zend_object *retval = FUNC1(ce, &objval);

	FUNC0(&(objval->obj), ce);

	return retval;
}