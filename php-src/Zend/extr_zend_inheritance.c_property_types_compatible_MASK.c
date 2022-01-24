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
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/  ce; } ;
typedef  TYPE_1__ zend_property_info ;
typedef  scalar_t__ inheritance_status ;

/* Variables and functions */
 scalar_t__ INHERITANCE_ERROR ; 
 scalar_t__ INHERITANCE_SUCCESS ; 
 scalar_t__ INHERITANCE_UNRESOLVED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

inheritance_status FUNC5(
		const zend_property_info *parent_info, const zend_property_info *child_info) {
	if (FUNC3(parent_info->type) == FUNC3(child_info->type)
			&& FUNC2(parent_info->type) == FUNC2(child_info->type)) {
		return INHERITANCE_SUCCESS;
	}

	if (FUNC1(parent_info->type) != FUNC1(child_info->type)) {
		return INHERITANCE_ERROR;
	}

	/* Perform a covariant type check in both directions to determined invariance. */
	inheritance_status status1 = FUNC4(
		child_info->ce, child_info->type, parent_info->ce, parent_info->type);
	inheritance_status status2 = FUNC4(
		parent_info->ce, parent_info->type, child_info->ce, child_info->type);
	if (status1 == INHERITANCE_SUCCESS && status2 == INHERITANCE_SUCCESS) {
		return INHERITANCE_SUCCESS;
	}
	if (status1 == INHERITANCE_ERROR || status2 == INHERITANCE_ERROR) {
		return INHERITANCE_ERROR;
	}
	FUNC0(status1 == INHERITANCE_UNRESOLVED && status2 == INHERITANCE_UNRESOLVED);
	return INHERITANCE_UNRESOLVED;
}