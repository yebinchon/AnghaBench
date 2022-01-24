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
#define  IS_ARRAY 133 
#define  IS_DOUBLE 132 
#define  IS_LONG 131 
#define  IS_NULL 130 
#define  IS_STRING 129 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int const FUNC6 (int /*<<< orphan*/ *) ; 
#define  _IS_BOOL 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(zval *result, uint32_t type, zval *op1) /* {{{ */
{
	switch (type) {
		case IS_NULL:
			FUNC4(result);
			return SUCCESS;
		case _IS_BOOL:
			FUNC0(result, FUNC11(op1));
			return SUCCESS;
		case IS_LONG:
			FUNC3(result, FUNC9(op1));
			return SUCCESS;
		case IS_DOUBLE:
			FUNC2(result, FUNC8(op1));
			return SUCCESS;
		case IS_STRING:
			/* Conversion from double to string takes into account run-time
			   'precision' setting and cannot be evaluated at compile-time */
			if (FUNC6(op1) != IS_ARRAY && FUNC6(op1) != IS_DOUBLE) {
				FUNC5(result, FUNC10(op1));
				return SUCCESS;
			}
			break;
		case IS_ARRAY:
			FUNC1(result, op1);
			FUNC7(result);
			return SUCCESS;
	}
	return FAILURE;
}