#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* key; int /*<<< orphan*/  suffix; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ FormatNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHECK_ERROR ; 
 int DCH_MAX_ITEM_SIZ ; 
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_DATETIME_FORMAT ; 
 int /*<<< orphan*/  ERROR ; 
 long INT_MAX ; 
 long INT_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int*,int,TYPE_2__*,int*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 long FUNC12 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC13(int *dest, char **src, const int len, FormatNode *node,
						bool *have_error)
{
	long		result;
	char		copy[DCH_MAX_ITEM_SIZ + 1];
	char	   *init = *src;
	int			used;

	/*
	 * Skip any whitespace before parsing the integer.
	 */
	*src += FUNC11(*src);

	FUNC0(len <= DCH_MAX_ITEM_SIZ);
	used = (int) FUNC10(copy, *src, len + 1);

	if (FUNC2(node->suffix) || FUNC9(node))
	{
		/*
		 * This node is in Fill Mode, or the next node is known to be a
		 * non-digit value, so we just slurp as many characters as we can get.
		 */
		errno = 0;
		result = FUNC12(init, src, 10);
	}
	else
	{
		/*
		 * We need to pull exactly the number of characters given in 'len' out
		 * of the string, and convert those.
		 */
		char	   *last;

		if (used < len)
			FUNC1(FUNC3(ERROR,
								 (FUNC4(ERRCODE_INVALID_DATETIME_FORMAT),
								  FUNC7("source string too short for \"%s\" "
										 "formatting field",
										 node->key->name),
								  FUNC5("Field requires %d characters, "
											"but only %d remain.",
											len, used),
								  FUNC6("If your source string is not fixed-width, "
										  "try using the \"FM\" modifier."))));

		errno = 0;
		result = FUNC12(copy, &last, 10);
		used = last - copy;

		if (used > 0 && used < len)
			FUNC1(FUNC3(ERROR,
								 (FUNC4(ERRCODE_INVALID_DATETIME_FORMAT),
								  FUNC7("invalid value \"%s\" for \"%s\"",
										 copy, node->key->name),
								  FUNC5("Field requires %d characters, "
											"but only %d could be parsed.",
											len, used),
								  FUNC6("If your source string is not fixed-width, "
										  "try using the \"FM\" modifier."))));

		*src += used;
	}

	if (*src == init)
		FUNC1(FUNC3(ERROR,
							 (FUNC4(ERRCODE_INVALID_DATETIME_FORMAT),
							  FUNC7("invalid value \"%s\" for \"%s\"",
									 copy, node->key->name),
							  FUNC5("Value must be an integer."))));

	if (errno == ERANGE || result < INT_MIN || result > INT_MAX)
		FUNC1(FUNC3(ERROR,
							 (FUNC4(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
							  FUNC7("value for \"%s\" in source string is out of range",
									 node->key->name),
							  FUNC5("Value must be in the range %d to %d.",
										INT_MIN, INT_MAX))));

	if (dest != NULL)
	{
		FUNC8(dest, (int) result, node, have_error);
		CHECK_ERROR;
	}

	return *src - init;

on_error:
	return -1;
}