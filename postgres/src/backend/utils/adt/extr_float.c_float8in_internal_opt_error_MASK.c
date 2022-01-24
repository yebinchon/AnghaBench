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
 int ERANGE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 double HUGE_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int errno ; 
 double FUNC4 () ; 
 double FUNC5 () ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*) ; 
 double FUNC9 (char*,char**) ; 

double
FUNC10(char *num, char **endptr_p,
							const char *type_name, const char *orig_string,
							bool *have_error)
{
	double		val;
	char	   *endptr;

	if (have_error)
		*have_error = false;

	/* skip leading whitespace */
	while (*num != '\0' && FUNC6((unsigned char) *num))
		num++;

	/*
	 * Check for an empty-string input to begin with, to avoid the vagaries of
	 * strtod() on different platforms.
	 */
	if (*num == '\0')
		FUNC0(FUNC1(ERROR,
							 (FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
							  FUNC3("invalid input syntax for type %s: \"%s\"",
									 type_name, orig_string))),
					 have_error);

	errno = 0;
	val = FUNC9(num, &endptr);

	/* did we not see anything that looks like a double? */
	if (endptr == num || errno != 0)
	{
		int			save_errno = errno;

		/*
		 * C99 requires that strtod() accept NaN, [+-]Infinity, and [+-]Inf,
		 * but not all platforms support all of these (and some accept them
		 * but set ERANGE anyway...)  Therefore, we check for these inputs
		 * ourselves if strtod() fails.
		 *
		 * Note: C99 also requires hexadecimal input as well as some extended
		 * forms of NaN, but we consider these forms unportable and don't try
		 * to support them.  You can use 'em if your strtod() takes 'em.
		 */
		if (FUNC7(num, "NaN", 3) == 0)
		{
			val = FUNC5();
			endptr = num + 3;
		}
		else if (FUNC7(num, "Infinity", 8) == 0)
		{
			val = FUNC4();
			endptr = num + 8;
		}
		else if (FUNC7(num, "+Infinity", 9) == 0)
		{
			val = FUNC4();
			endptr = num + 9;
		}
		else if (FUNC7(num, "-Infinity", 9) == 0)
		{
			val = -FUNC4();
			endptr = num + 9;
		}
		else if (FUNC7(num, "inf", 3) == 0)
		{
			val = FUNC4();
			endptr = num + 3;
		}
		else if (FUNC7(num, "+inf", 4) == 0)
		{
			val = FUNC4();
			endptr = num + 4;
		}
		else if (FUNC7(num, "-inf", 4) == 0)
		{
			val = -FUNC4();
			endptr = num + 4;
		}
		else if (save_errno == ERANGE)
		{
			/*
			 * Some platforms return ERANGE for denormalized numbers (those
			 * that are not zero, but are too close to zero to have full
			 * precision).  We'd prefer not to throw error for that, so try to
			 * detect whether it's a "real" out-of-range condition by checking
			 * to see if the result is zero or huge.
			 *
			 * On error, we intentionally complain about double precision not
			 * the given type name, and we print only the part of the string
			 * that is the current number.
			 */
			if (val == 0.0 || val >= HUGE_VAL || val <= -HUGE_VAL)
			{
				char	   *errnumber = FUNC8(num);

				errnumber[endptr - num] = '\0';
				FUNC0(FUNC1(ERROR,
									 (FUNC2(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
									  FUNC3("\"%s\" is out of range for type double precision",
											 errnumber))),
							 have_error);
			}
		}
		else
			FUNC0(FUNC1(ERROR,
								 (FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
								  FUNC3("invalid input syntax for type "
										 "%s: \"%s\"",
										 type_name, orig_string))),
						 have_error);
	}
#ifdef HAVE_BUGGY_SOLARIS_STRTOD
	else
	{
		/*
		 * Many versions of Solaris have a bug wherein strtod sets endptr to
		 * point one byte beyond the end of the string when given "inf" or
		 * "infinity".
		 */
		if (endptr != num && endptr[-1] == '\0')
			endptr--;
	}
#endif							/* HAVE_BUGGY_SOLARIS_STRTOD */

	/* skip trailing whitespace */
	while (*endptr != '\0' && FUNC6((unsigned char) *endptr))
		endptr++;

	/* report stopping point if wanted, else complain if not end of string */
	if (endptr_p)
		*endptr_p = endptr;
	else if (*endptr != '\0')
		FUNC0(FUNC1(ERROR,
							 (FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
							  FUNC3("invalid input syntax for type "
									 "%s: \"%s\"",
									 type_name, orig_string))),
					 have_error);

	return val;
}