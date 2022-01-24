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
typedef  int /*<<< orphan*/  Numeric ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  numeric_out ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 double FUNC7 (char*,char**) ; 

__attribute__((used)) static double
FUNC8(Numeric num)
{
	char	   *tmp;
	double		val;
	char	   *endptr;

	tmp = FUNC0(FUNC1(numeric_out,
											  FUNC2(num)));

	/* unlike float8in, we ignore ERANGE from strtod */
	val = FUNC7(tmp, &endptr);
	if (*endptr != '\0')
	{
		/* shouldn't happen ... */
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC5("invalid input syntax for type %s: \"%s\"",
						"double precision", tmp)));
	}

	FUNC6(tmp);

	return val;
}