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
typedef  int /*<<< orphan*/  zend_string ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FAILURE ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,size_t,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_string* FUNC7(size_t length) /* {{{ */
{
	zend_string *ret, *buffer;

	if (length > (INT_MAX / 3)) {
		FUNC2(NULL, E_WARNING, "Length is too large to safely generate");
		return NULL;
	}

	buffer = FUNC5(length * 3 / 4 + 1, 0);
	if (FAILURE == FUNC4(FUNC1(buffer), FUNC0(buffer))) {
		FUNC2(NULL, E_WARNING, "Unable to generate salt");
		FUNC6(buffer, 0);
		return NULL;
	}

	ret = FUNC5(length, 0);
	if (FUNC3(FUNC1(buffer), FUNC0(buffer), length, FUNC1(ret)) == FAILURE) {
		FUNC2(NULL, E_WARNING, "Generated salt too short");
		FUNC6(buffer, 0);
		FUNC6(ret, 0);
		return NULL;
	}
	FUNC6(buffer, 0);
	FUNC1(ret)[length] = 0;
	return ret;
}