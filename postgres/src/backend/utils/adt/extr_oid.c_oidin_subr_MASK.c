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
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 unsigned long FUNC4 (char const*,char**,int) ; 

__attribute__((used)) static Oid
FUNC5(const char *s, char **endloc)
{
	unsigned long cvt;
	char	   *endptr;
	Oid			result;

	if (*s == '\0')
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC2("invalid input syntax for type %s: \"%s\"",
						"oid", s)));

	errno = 0;
	cvt = FUNC4(s, &endptr, 10);

	/*
	 * strtoul() normally only sets ERANGE.  On some systems it also may set
	 * EINVAL, which simply means it couldn't parse the input string. This is
	 * handled by the second "if" consistent across platforms.
	 */
	if (errno && errno != ERANGE && errno != EINVAL)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC2("invalid input syntax for type %s: \"%s\"",
						"oid", s)));

	if (endptr == s && *s != '\0')
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC2("invalid input syntax for type %s: \"%s\"",
						"oid", s)));

	if (errno == ERANGE)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
				 FUNC2("value \"%s\" is out of range for type %s",
						s, "oid")));

	if (endloc)
	{
		/* caller wants to deal with rest of string */
		*endloc = endptr;
	}
	else
	{
		/* allow only whitespace after number */
		while (*endptr && FUNC3((unsigned char) *endptr))
			endptr++;
		if (*endptr)
			FUNC0(ERROR,
					(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC2("invalid input syntax for type %s: \"%s\"",
							"oid", s)));
	}

	result = (Oid) cvt;

	/*
	 * Cope with possibility that unsigned long is wider than Oid, in which
	 * case strtoul will not raise an error for some values that are out of
	 * the range of Oid.
	 *
	 * For backwards compatibility, we want to accept inputs that are given
	 * with a minus sign, so allow the input value if it matches after either
	 * signed or unsigned extension to long.
	 *
	 * To ensure consistent results on 32-bit and 64-bit platforms, make sure
	 * the error message is the same as if strtoul() had returned ERANGE.
	 */
#if OID_MAX != ULONG_MAX
	if (cvt != (unsigned long) result &&
		cvt != (unsigned long) ((int) result))
		ereport(ERROR,
				(errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
				 errmsg("value \"%s\" is out of range for type %s",
						s, "oid")));
#endif

	return result;
}