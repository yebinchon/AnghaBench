#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_6__ {int /*<<< orphan*/  class_table; } ;
typedef  TYPE_1__ zend_script ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef  TYPE_2__ zend_class_entry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZEND_INTERNAL_CLASS ; 
 int /*<<< orphan*/  class_table ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline zend_class_entry *FUNC2(const zend_script *script, zend_string *lcname) {
	zend_class_entry *ce = script ? FUNC1(&script->class_table, lcname) : NULL;
	if (ce) {
		return ce;
	}

	ce = FUNC1(FUNC0(class_table), lcname);
	if (ce && ce->type == ZEND_INTERNAL_CLASS) {
		return ce;
	}

	return NULL;
}