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
typedef  int /*<<< orphan*/  zend_long ;

/* Variables and functions */
 int FAILURE ; 
#define  IS_LONG 129 
#define  IS_STRING 128 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int const FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(zend_long *result, zval *op) {
	switch (FUNC3(op)) {
		case IS_LONG:
			*result = FUNC0(op);
			return SUCCESS;
		case IS_STRING:
			if (IS_LONG == FUNC4(
					FUNC2(op), FUNC1(op), result, NULL, 0)) {
				return SUCCESS;
			}
			return FAILURE;
		default:
			return FAILURE;
	}
}