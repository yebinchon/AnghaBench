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
 int FAILURE ; 
 scalar_t__ IS_FALSE ; 
 scalar_t__ IS_NULL ; 
 int SUCCESS ; 
 int ZEND_ISEMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(zval *result, uint32_t extended_value, zval *op1) {
	zval zv;
	if (!(extended_value & ZEND_ISEMPTY)) {
		FUNC0(result, op1 && FUNC3(op1) != IS_NULL);
		return SUCCESS;
	} else if (!op1) {
		FUNC1(result);
		return SUCCESS;
	} else if (FUNC4(&zv, op1) == SUCCESS) {
		FUNC0(result, FUNC2(zv) == IS_FALSE);
		return SUCCESS;
	} else {
		return FAILURE;
	}
}