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
typedef  int /*<<< orphan*/  zend_type ;
typedef  int zend_bool ;

/* Variables and functions */
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_LONG ; 
 int MAY_BE_DOUBLE ; 
 int MAY_BE_ITERABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_bool FUNC6(zend_type type, zval *value)
{
	FUNC0(FUNC3(type));
	if (FUNC1(type, FUNC4(value))) {
		return 1;
	}
	if ((FUNC2(type) & MAY_BE_DOUBLE) && FUNC4(value) == IS_LONG) {
		/* Integers are allowed as initializers for floating-point values. */
		FUNC5(value);
		return 1;
	}
	if ((FUNC2(type) & MAY_BE_ITERABLE) && FUNC4(value) == IS_ARRAY) {
		return 1;
	}
	return 0;
}