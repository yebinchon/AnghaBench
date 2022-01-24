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
struct TYPE_5__ {int ce_flags; } ;
typedef  TYPE_1__ zend_class_entry ;
struct TYPE_6__ {scalar_t__ type; int /*<<< orphan*/  parent_prop; int /*<<< orphan*/  child_prop; int /*<<< orphan*/  parent_fn; int /*<<< orphan*/  child_fn; TYPE_1__* dependency_ce; } ;
typedef  TYPE_2__ variance_obligation ;
typedef  scalar_t__ inheritance_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ INHERITANCE_ERROR ; 
 scalar_t__ INHERITANCE_SUCCESS ; 
 scalar_t__ INHERITANCE_UNRESOLVED ; 
 scalar_t__ OBLIGATION_COMPATIBILITY ; 
 scalar_t__ OBLIGATION_DEPENDENCY ; 
 scalar_t__ OBLIGATION_PROPERTY_COMPATIBILITY ; 
 scalar_t__ FUNC1 (int) ; 
 int ZEND_ACC_LINKED ; 
 int ZEND_ACC_UNRESOLVED_VARIANCE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ZEND_HASH_APPLY_KEEP ; 
 int ZEND_HASH_APPLY_REMOVE ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(zval *zv) {
	variance_obligation *obligation = FUNC3(zv);
	if (obligation->type == OBLIGATION_DEPENDENCY) {
		zend_class_entry *dependency_ce = obligation->dependency_ce;
		if (dependency_ce->ce_flags & ZEND_ACC_UNRESOLVED_VARIANCE) {
			FUNC7(dependency_ce);
		}
		if (!(dependency_ce->ce_flags & ZEND_ACC_LINKED)) {
			return ZEND_HASH_APPLY_KEEP;
		}
	} else if (obligation->type == OBLIGATION_COMPATIBILITY) {
		inheritance_status status = FUNC8(
			obligation->child_fn, obligation->parent_fn);
		if (FUNC1(status != INHERITANCE_SUCCESS)) {
			if (FUNC0(status == INHERITANCE_UNRESOLVED)) {
				return ZEND_HASH_APPLY_KEEP;
			}
			FUNC2(status == INHERITANCE_ERROR);
			FUNC4(obligation->child_fn, obligation->parent_fn, status);
		}
		/* Either the compatibility check was successful or only threw a warning. */
	} else {
		FUNC2(obligation->type == OBLIGATION_PROPERTY_COMPATIBILITY);
		inheritance_status status =
			FUNC6(obligation->parent_prop, obligation->child_prop);
		if (status != INHERITANCE_SUCCESS) {
			if (status == INHERITANCE_UNRESOLVED) {
				return ZEND_HASH_APPLY_KEEP;
			}
			FUNC2(status == INHERITANCE_ERROR);
			FUNC5(obligation->child_prop, obligation->parent_prop);
		}
	}
	return ZEND_HASH_APPLY_REMOVE;
}