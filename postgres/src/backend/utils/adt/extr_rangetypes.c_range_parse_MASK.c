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

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 char RANGE_EMPTY ; 
 int /*<<< orphan*/  RANGE_EMPTY_LITERAL ; 
 char RANGE_LB_INC ; 
 char RANGE_LB_INF ; 
 char RANGE_UB_INC ; 
 char RANGE_UB_INF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const*,char const*,char**,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(const char *string, char *flags, char **lbound_str,
			char **ubound_str)
{
	const char *ptr = string;
	bool		infinite;

	*flags = 0;

	/* consume whitespace */
	while (*ptr != '\0' && FUNC4((unsigned char) *ptr))
		ptr++;

	/* check for empty range */
	if (FUNC5(ptr, RANGE_EMPTY_LITERAL,
					   FUNC7(RANGE_EMPTY_LITERAL)) == 0)
	{
		*flags = RANGE_EMPTY;
		*lbound_str = NULL;
		*ubound_str = NULL;

		ptr += FUNC7(RANGE_EMPTY_LITERAL);

		/* the rest should be whitespace */
		while (*ptr != '\0' && FUNC4((unsigned char) *ptr))
			ptr++;

		/* should have consumed everything */
		if (*ptr != '\0')
			FUNC0(ERROR,
					(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC3("malformed range literal: \"%s\"",
							string),
					 FUNC2("Junk after \"empty\" key word.")));

		return;
	}

	if (*ptr == '[')
	{
		*flags |= RANGE_LB_INC;
		ptr++;
	}
	else if (*ptr == '(')
		ptr++;
	else
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC3("malformed range literal: \"%s\"",
						string),
				 FUNC2("Missing left parenthesis or bracket.")));

	ptr = FUNC6(string, ptr, lbound_str, &infinite);
	if (infinite)
		*flags |= RANGE_LB_INF;

	if (*ptr == ',')
		ptr++;
	else
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC3("malformed range literal: \"%s\"",
						string),
				 FUNC2("Missing comma after lower bound.")));

	ptr = FUNC6(string, ptr, ubound_str, &infinite);
	if (infinite)
		*flags |= RANGE_UB_INF;

	if (*ptr == ']')
	{
		*flags |= RANGE_UB_INC;
		ptr++;
	}
	else if (*ptr == ')')
		ptr++;
	else						/* must be a comma */
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC3("malformed range literal: \"%s\"",
						string),
				 FUNC2("Too many commas.")));

	/* consume whitespace */
	while (*ptr != '\0' && FUNC4((unsigned char) *ptr))
		ptr++;

	if (*ptr != '\0')
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC3("malformed range literal: \"%s\"",
						string),
				 FUNC2("Junk after right parenthesis or bracket.")));
}