#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_9__ {int ce_flags; size_t num_interfaces; size_t num_traits; TYPE_2__* trait_names; TYPE_1__* interface_names; scalar_t__ parent_name; } ;
typedef  TYPE_3__ zend_class_entry ;
typedef  size_t uint32_t ;
struct TYPE_8__ {scalar_t__ name; int /*<<< orphan*/ * lc_name; } ;
struct TYPE_7__ {scalar_t__ name; int /*<<< orphan*/ * lc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZEND_ACC_CONSTANTS_UPDATED ; 
 int ZEND_ACC_PROPERTY_TYPES_RESOLVED ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  class_table ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(zend_class_entry *ce, const char **kind, const char **name) {
	zend_class_entry *p;
	*kind = "Unknown reason";
	*name = "";

	if (ce->parent_name) {
		zend_string *key = FUNC5(ce->parent_name);
		p = FUNC3(FUNC0(class_table), key);
		FUNC4(key);
		if (!p) {
			*kind = "Unknown parent ";
			*name = FUNC1(ce->parent_name);
			return;
		}
		if (!(p->ce_flags & ZEND_ACC_CONSTANTS_UPDATED)) {
			*kind = "Parent with unresolved initializers ";
			*name = FUNC1(ce->parent_name);
			return;
		}
		if (!(p->ce_flags & ZEND_ACC_PROPERTY_TYPES_RESOLVED)) {
			*kind = "Parent with unresolved property types ";
			*name = FUNC1(ce->parent_name);
			return;
		}
	}

	if (ce->num_interfaces) {
		uint32_t i;
		for (i = 0; i < ce->num_interfaces; i++) {
			p = FUNC3(FUNC0(class_table), ce->interface_names[i].lc_name);
			if (!p) {
				*kind = "Unknown interface ";
				*name = FUNC1(ce->interface_names[i].name);
				return;
			}
		}
	}

	if (ce->num_traits) {
		uint32_t i;
		for (i = 0; i < ce->num_traits; i++) {
			p = FUNC3(FUNC0(class_table), ce->trait_names[i].lc_name);
			if (!p) {
				*kind = "Unknown trait ";
				*name = FUNC1(ce->trait_names[i].name);
				return;
			}
		}
	}

	if (!FUNC2(ce)) {
		*kind = "Unknown type dependencies";
		return;
	}
}