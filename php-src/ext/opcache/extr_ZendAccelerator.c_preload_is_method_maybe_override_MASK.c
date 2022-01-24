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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_8__ {size_t num_interfaces; size_t num_traits; int /*<<< orphan*/  function_table; TYPE_2__* trait_names; TYPE_1__* interface_names; scalar_t__ parent_name; scalar_t__ trait_precedences; scalar_t__ trait_aliases; } ;
typedef  TYPE_3__ zend_class_entry ;
typedef  int zend_bool ;
typedef  size_t uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/ * lc_name; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  class_table ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 

__attribute__((used)) static zend_bool FUNC5(zend_class_entry *ce, zend_string *lcname) {
	zend_class_entry *p;
	if (ce->trait_aliases || ce->trait_precedences) {
		return 1;
	}

	if (ce->parent_name) {
		zend_string *key = FUNC4(ce->parent_name);
		p = FUNC2(FUNC0(class_table), key);
		FUNC3(key);
		if (FUNC1(&p->function_table, lcname)) {
			return 1;
		}
	}

	if (ce->num_interfaces) {
		uint32_t i;
		for (i = 0; i < ce->num_interfaces; i++) {
			zend_class_entry *p = FUNC2(FUNC0(class_table), ce->interface_names[i].lc_name);
			if (FUNC1(&p->function_table, lcname)) {
				return 1;
			}
		}
	}

	if (ce->num_traits) {
		uint32_t i;
		for (i = 0; i < ce->num_traits; i++) {
			zend_class_entry *p = FUNC2(FUNC0(class_table), ce->trait_names[i].lc_name);
			if (FUNC1(&p->function_table, lcname)) {
				return 1;
			}
		}
	}

	return 0;
}