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
typedef  int /*<<< orphan*/  numeric ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 long LONG_MIN ; 
 scalar_t__ PGTYPES_NUM_OVERFLOW ; 
 scalar_t__ PGTYPES_NUM_UNDERFLOW ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long FUNC2 (char*,char**,int) ; 

int
FUNC3(numeric *nv, long *lp)
{
	char	   *s = FUNC0(nv, 0);
	char	   *endptr;

	if (s == NULL)
		return -1;

	errno = 0;
	*lp = FUNC2(s, &endptr, 10);
	if (endptr == s)
	{
		/* this should not happen actually */
		FUNC1(s);
		return -1;
	}
	FUNC1(s);
	if (errno == ERANGE)
	{
		if (*lp == LONG_MIN)
			errno = PGTYPES_NUM_UNDERFLOW;
		else
			errno = PGTYPES_NUM_OVERFLOW;
		return -1;
	}
	return 0;
}