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
typedef  int /*<<< orphan*/  int32 ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  PG_INT32_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (char const) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

int32
FUNC9(const char *s)
{
	const char *ptr = s;
	int32		tmp = 0;
	bool		neg = false;

	/* skip leading spaces */
	while (FUNC5(*ptr) && FUNC4((unsigned char) *ptr))
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
	if (FUNC8(!FUNC3((unsigned char) *ptr)))
		goto invalid_syntax;

	/* process digits */
	while (*ptr && FUNC3((unsigned char) *ptr))
	{
		int8		digit = (*ptr++ - '0');

		if (FUNC8(FUNC6(tmp, 10, &tmp)) ||
			FUNC8(FUNC7(tmp, digit, &tmp)))
			goto out_of_range;
	}

	/* allow trailing whitespace, but not other trailing chars */
	while (*ptr != '\0' && FUNC4((unsigned char) *ptr))
		ptr++;

	if (FUNC8(*ptr != '\0'))
		goto invalid_syntax;

	if (!neg)
	{
		/* could fail if input is most negative number */
		if (FUNC8(tmp == PG_INT32_MIN))
			goto out_of_range;
		tmp = -tmp;
	}

	return tmp;

out_of_range:
	FUNC0(ERROR,
			(FUNC1(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
			 FUNC2("value \"%s\" is out of range for type %s",
					s, "integer")));

invalid_syntax:
	FUNC0(ERROR,
			(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
			 FUNC2("invalid input syntax for type %s: \"%s\"",
					"integer", s)));

	return 0;					/* keep compiler quiet */
}