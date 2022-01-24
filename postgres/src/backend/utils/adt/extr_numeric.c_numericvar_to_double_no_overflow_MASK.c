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
typedef  int /*<<< orphan*/  NumericVar ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 double FUNC5 (char*,char**) ; 

__attribute__((used)) static double
FUNC6(const NumericVar *var)
{
	char	   *tmp;
	double		val;
	char	   *endptr;

	tmp = FUNC3(var);

	/* unlike float8in, we ignore ERANGE from strtod */
	val = FUNC5(tmp, &endptr);
	if (*endptr != '\0')
	{
		/* shouldn't happen ... */
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC2("invalid input syntax for type %s: \"%s\"",
						"double precision", tmp)));
	}

	FUNC4(tmp);

	return val;
}