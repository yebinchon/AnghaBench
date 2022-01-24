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
typedef  int /*<<< orphan*/  int8 ;
typedef  int /*<<< orphan*/  int64 ;

/* Variables and functions */
 int /*<<< orphan*/  PG_INT64_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (int) ; 

bool
FUNC6(const char *str, bool errorOK, int64 *result)
{
	const char *ptr = str;
	int64		tmp = 0;
	bool		neg = false;

	/*
	 * Do our own scan, rather than relying on sscanf which might be broken
	 * for long long.
	 *
	 * As INT64_MIN can't be stored as a positive 64 bit integer, accumulate
	 * value as a negative number.
	 */

	/* skip leading spaces */
	while (*ptr && FUNC2((unsigned char) *ptr))
		ptr++;

	/* handle sign */
	if (*ptr == '-')
	{
		ptr++;
		neg = true;
	}
	else if (*ptr == '+')
		ptr++;

	/* require at least one digit */
	if (FUNC5(!FUNC1((unsigned char) *ptr)))
		goto invalid_syntax;

	/* process digits */
	while (*ptr && FUNC1((unsigned char) *ptr))
	{
		int8		digit = (*ptr++ - '0');

		if (FUNC5(FUNC3(tmp, 10, &tmp)) ||
			FUNC5(FUNC4(tmp, digit, &tmp)))
			goto out_of_range;
	}

	/* allow trailing whitespace, but not other trailing chars */
	while (*ptr != '\0' && FUNC2((unsigned char) *ptr))
		ptr++;

	if (FUNC5(*ptr != '\0'))
		goto invalid_syntax;

	if (!neg)
	{
		if (FUNC5(tmp == PG_INT64_MIN))
			goto out_of_range;
		tmp = -tmp;
	}

	*result = tmp;
	return true;

out_of_range:
	if (!errorOK)
		FUNC0(stderr,
				"value \"%s\" is out of range for type bigint\n", str);
	return false;

invalid_syntax:
	if (!errorOK)
		FUNC0(stderr,
				"invalid input syntax for type bigint: \"%s\"\n", str);
	return false;
}