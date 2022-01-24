#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int uint32_t ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ IS_STRING ; 
 int SUCCESS ; 
 int ZEND_ISEMPTY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC6(zval *result, uint32_t extended_value, zval *op1, zval *op2) {
	if (FUNC3(op1) == IS_ARRAY || FUNC1(op1)) {
		zval *value;
		if (FUNC5(&value, op1, op2) == FAILURE) {
			return FAILURE;
		}
		if (FUNC1(op1) && (!value || FUNC0(value))) {
			return FAILURE;
		}
		return FUNC4(result, extended_value, value);
	} else if (FUNC3(op1) == IS_STRING) {
		// TODO
		return FAILURE;
	} else {
		FUNC2(result, (extended_value & ZEND_ISEMPTY));
		return SUCCESS;
	}
}