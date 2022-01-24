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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC13(zval *result, zval *value, zval *key) {
	if (!key) {
		FUNC0(result);
		if ((value = FUNC10(FUNC2(result), value))) {
			FUNC6(value);
			return SUCCESS;
		}
		return FAILURE;
	}

	switch (FUNC7(key)) {
		case IS_NULL:
			FUNC0(result);
			value = FUNC11(FUNC2(result), FUNC1(), value);
			break;
		case IS_FALSE:
			FUNC0(result);
			value = FUNC9(FUNC2(result), 0, value);
			break;
		case IS_TRUE:
			FUNC0(result);
			value = FUNC9(FUNC2(result), 1, value);
			break;
		case IS_LONG:
			FUNC0(result);
			value = FUNC9(FUNC2(result), FUNC4(key), value);
			break;
		case IS_DOUBLE:
			FUNC0(result);
			value = FUNC9(
				FUNC2(result), FUNC8(FUNC3(key)), value);
			break;
		case IS_STRING:
			FUNC0(result);
			value = FUNC12(FUNC2(result), FUNC5(key), value);
			break;
		default:
			return FAILURE;
	}

	FUNC6(value);
	return SUCCESS;
}