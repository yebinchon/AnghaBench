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
typedef  size_t zend_long ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 scalar_t__ IS_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC10(zval *result, zval *op1, zval *op2, int support_strings) {
	if (FUNC6(op1) == IS_ARRAY || FUNC1(op1)) {
		zval *value;
		if (FUNC7(&value, op1, op2) == SUCCESS && value && !FUNC0(value)) {
			FUNC2(result, value);
			return SUCCESS;
		}
	} else if (support_strings && FUNC6(op1) == IS_STRING) {
		zend_long index;
		if (FUNC9(&index, op2) == FAILURE) {
			return FAILURE;
		}
		if (index >= 0 && index < FUNC4(op1)) {
			FUNC3(result, FUNC8(&FUNC5(op1)[index], 1, 0));
			return SUCCESS;
		}
	}
	return FAILURE;
}