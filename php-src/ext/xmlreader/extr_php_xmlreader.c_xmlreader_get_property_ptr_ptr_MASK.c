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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  xmlreader_prop_handler ;
struct TYPE_3__ {int /*<<< orphan*/ * prop_handler; } ;
typedef  TYPE_1__ xmlreader_object ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,void**) ; 

zval *FUNC3(zend_object *object, zend_string *name, int type, void **cache_slot)
{
	xmlreader_object *obj;
	zval *retval = NULL;
	xmlreader_prop_handler *hnd = NULL;

	obj = FUNC0(object);

	if (obj->prop_handler != NULL) {
		hnd = FUNC1(obj->prop_handler, name);
	}

	if (hnd == NULL) {
		retval = FUNC2(object, name, type, cache_slot);
	}

	return retval;
}