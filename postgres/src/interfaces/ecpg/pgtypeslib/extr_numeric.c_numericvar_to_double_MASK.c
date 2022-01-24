#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dscale; } ;
typedef  TYPE_1__ numeric ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 scalar_t__ PGTYPES_NUM_BAD_NUMERIC ; 
 scalar_t__ PGTYPES_NUM_OVERFLOW ; 
 scalar_t__ PGTYPES_NUM_UNDERFLOW ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 double FUNC5 (char*,char**) ; 

__attribute__((used)) static int
FUNC6(numeric *var, double *dp)
{
	char	   *tmp;
	double		val;
	char	   *endptr;
	numeric    *varcopy = FUNC2();

	if (varcopy == NULL)
		return -1;

	if (FUNC0(var, varcopy) < 0)
	{
		FUNC1(varcopy);
		return -1;
	}

	tmp = FUNC4(varcopy, varcopy->dscale);
	FUNC1(varcopy);

	if (tmp == NULL)
		return -1;

	/*
	 * strtod does not reset errno to 0 in case of success.
	 */
	errno = 0;
	val = FUNC5(tmp, &endptr);
	if (errno == ERANGE)
	{
		FUNC3(tmp);
		if (val == 0)
			errno = PGTYPES_NUM_UNDERFLOW;
		else
			errno = PGTYPES_NUM_OVERFLOW;
		return -1;
	}

	/* can't free tmp yet, endptr points still into it */
	if (*endptr != '\0')
	{
		/* shouldn't happen ... */
		FUNC3(tmp);
		errno = PGTYPES_NUM_BAD_NUMERIC;
		return -1;
	}
	FUNC3(tmp);
	*dp = val;
	return 0;
}