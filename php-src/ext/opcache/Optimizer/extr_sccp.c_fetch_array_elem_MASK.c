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
#define  IS_DOUBLE 133 
#define  IS_FALSE 132 
#define  IS_LONG 131 
#define  IS_NULL 130 
#define  IS_STRING 129 
#define  IS_TRUE 128 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC10(zval **result, zval *op1, zval *op2) {
	switch (FUNC5(op2)) {
		case IS_NULL:
			*result = FUNC7(FUNC1(op1), FUNC0());
			return SUCCESS;
		case IS_FALSE:
			*result = FUNC8(FUNC1(op1), 0);
			return SUCCESS;
		case IS_TRUE:
			*result = FUNC8(FUNC1(op1), 1);
			return SUCCESS;
		case IS_LONG:
			*result = FUNC8(FUNC1(op1), FUNC3(op2));
			return SUCCESS;
		case IS_DOUBLE:
			*result = FUNC8(FUNC1(op1), FUNC6(FUNC2(op2)));
			return SUCCESS;
		case IS_STRING:
			*result = FUNC9(FUNC1(op1), FUNC4(op2));
			return SUCCESS;
		default:
			return FAILURE;
	}
}