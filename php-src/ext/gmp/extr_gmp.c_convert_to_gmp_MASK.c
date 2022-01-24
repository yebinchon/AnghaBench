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
typedef  int zend_long ;
typedef  int zend_bool ;
typedef  int /*<<< orphan*/  mpz_t ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
#define  IS_FALSE 131 
#define  IS_LONG 130 
#define  IS_STRING 129 
#define  IS_TRUE 128 
 int SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(mpz_t gmpnumber, zval *val, zend_long base)
{
	switch (FUNC2(val)) {
	case IS_LONG:
	case IS_FALSE:
	case IS_TRUE: {
		FUNC3(gmpnumber, FUNC6(val));
		return SUCCESS;
	}
	case IS_STRING: {
		char *numstr = FUNC1(val);
		zend_bool skip_lead = 0;
		int ret;

		if (FUNC0(val) > 2 && numstr[0] == '0') {
			if ((base == 0 || base == 16) && (numstr[1] == 'x' || numstr[1] == 'X')) {
				base = 16;
				skip_lead = 1;
			} else if ((base == 0 || base == 2) && (numstr[1] == 'b' || numstr[1] == 'B')) {
				base = 2;
				skip_lead = 1;
			}
		}

		ret = FUNC4(gmpnumber, (skip_lead ? &numstr[2] : numstr), (int) base);
		if (-1 == ret) {
			FUNC5(NULL, E_WARNING,
				"Unable to convert variable to GMP - string is not an integer");
			return FAILURE;
		}

		return SUCCESS;
	}
	default:
		FUNC5(NULL, E_WARNING,
			"Unable to convert variable to GMP - wrong type");
		return FAILURE;
	}
}