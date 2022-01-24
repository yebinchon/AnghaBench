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

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IS_LONG ; 
 scalar_t__ IS_NULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ IS_STRING ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(zval *result, zval *op1, zval *op2) {
	zval *value;

	if (FUNC3(op2) != IS_ARRAY && !FUNC1(op2)) {
		return FAILURE;
	}
	if (FUNC3(op1) != IS_STRING && FUNC3(op1) != IS_LONG && FUNC3(op1) != IS_NULL) {
		return FAILURE;
	}
	if (FUNC4(&value, op2, op1) == FAILURE) {
		return FAILURE;
	}
	if (FUNC1(op2) && (!value || FUNC0(value))) {
		return FAILURE;
	}

	FUNC2(result, value != NULL);
	return SUCCESS;
}