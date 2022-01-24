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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  IS_STRING 129 
#define  IS_TRUE 128 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC12(zval *result, zval *key) {
	FUNC1(FUNC0(result));

	switch (FUNC7(key)) {
		case IS_NULL:
			FUNC9(FUNC3(result), FUNC2());
			break;
		case IS_FALSE:
			FUNC10(FUNC3(result), 0);
			break;
		case IS_TRUE:
			FUNC10(FUNC3(result), 1);
			break;
		case IS_LONG:
			FUNC10(FUNC3(result), FUNC5(key));
			break;
		case IS_DOUBLE:
			FUNC10(FUNC3(result), FUNC8(FUNC4(key)));
			break;
		case IS_STRING:
			FUNC11(FUNC3(result), FUNC6(key));
			break;
		default:
			return FAILURE;
	}

	return SUCCESS;
}