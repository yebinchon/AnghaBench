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
typedef  char int8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(const char **ptr, const char *end_ptr, int *value)
{
	bool		found = false;
	const char *cp = *ptr;
	int			val = 0;

	while (*cp >= '0' && *cp <= '9')
	{
		int8		digit = (*cp - '0');

		if (FUNC6(FUNC5(val, 10, &val)) ||
			FUNC6(FUNC4(val, digit, &val)))
			FUNC1(ERROR,
					(FUNC2(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
					 FUNC3("number is out of range")));
		FUNC0(cp, end_ptr);
		found = true;
	}

	*ptr = cp;
	*value = val;

	return found;
}