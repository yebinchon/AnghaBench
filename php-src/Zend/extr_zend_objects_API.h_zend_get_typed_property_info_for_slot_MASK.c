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
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ zend_property_info ;
typedef  int /*<<< orphan*/  zend_object ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline zend_property_info *FUNC2(zend_object *obj, zval *slot)
{
	zend_property_info *prop_info = FUNC1(obj, slot);
	if (prop_info && FUNC0(prop_info->type)) {
		return prop_info;
	}
	return NULL;
}