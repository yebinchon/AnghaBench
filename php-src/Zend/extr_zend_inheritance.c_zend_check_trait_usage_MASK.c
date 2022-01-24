#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ce_flags; size_t num_traits; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zend_class_entry ;
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 scalar_t__ FUNC0 (int) ; 
 int ZEND_ACC_TRAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static uint32_t FUNC3(zend_class_entry *ce, zend_class_entry *trait, zend_class_entry **traits) /* {{{ */
{
	uint32_t i;

	if (FUNC0((trait->ce_flags & ZEND_ACC_TRAIT) != ZEND_ACC_TRAIT)) {
		FUNC2(E_COMPILE_ERROR, "Class %s is not a trait, Only traits may be used in 'as' and 'insteadof' statements", FUNC1(trait->name));
		return 0;
	}

	for (i = 0; i < ce->num_traits; i++) {
		if (traits[i] == trait) {
			return i;
		}
	}
	FUNC2(E_COMPILE_ERROR, "Required Trait %s wasn't added to %s", FUNC1(trait->name), FUNC1(ce->name));
	return 0;
}