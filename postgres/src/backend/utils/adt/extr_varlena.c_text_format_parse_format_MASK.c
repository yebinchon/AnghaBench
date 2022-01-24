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
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int TEXT_FORMAT_FLAG_MINUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const**,char const*,int*) ; 

__attribute__((used)) static const char *
FUNC5(const char *start_ptr, const char *end_ptr,
						 int *argpos, int *widthpos,
						 int *flags, int *width)
{
	const char *cp = start_ptr;
	int			n;

	/* set defaults for output parameters */
	*argpos = -1;
	*widthpos = -1;
	*flags = 0;
	*width = 0;

	/* try to identify first number */
	if (FUNC4(&cp, end_ptr, &n))
	{
		if (*cp != '$')
		{
			/* Must be just a width and a type, so we're done */
			*width = n;
			return cp;
		}
		/* The number was argument position */
		*argpos = n;
		/* Explicit 0 for argument index is immediately refused */
		if (n == 0)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC3("format specifies argument 0, but arguments are numbered from 1")));
		FUNC0(cp, end_ptr);
	}

	/* Handle flags (only minus is supported now) */
	while (*cp == '-')
	{
		*flags |= TEXT_FORMAT_FLAG_MINUS;
		FUNC0(cp, end_ptr);
	}

	if (*cp == '*')
	{
		/* Handle indirect width */
		FUNC0(cp, end_ptr);
		if (FUNC4(&cp, end_ptr, &n))
		{
			/* number in this position must be closed by $ */
			if (*cp != '$')
				FUNC1(ERROR,
						(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC3("width argument position must be ended by \"$\"")));
			/* The number was width argument position */
			*widthpos = n;
			/* Explicit 0 for argument index is immediately refused */
			if (n == 0)
				FUNC1(ERROR,
						(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC3("format specifies argument 0, but arguments are numbered from 1")));
			FUNC0(cp, end_ptr);
		}
		else
			*widthpos = 0;		/* width's argument position is unspecified */
	}
	else
	{
		/* Check for direct width specification */
		if (FUNC4(&cp, end_ptr, &n))
			*width = n;
	}

	/* cp should now be pointing at type character */
	return cp;
}