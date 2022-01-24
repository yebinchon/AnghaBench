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
 long INT_MAX ; 
 int /*<<< orphan*/  PGTYPES_NUM_OVERFLOW ; 
 int FUNC0 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  errno ; 

int
FUNC1(numeric *nv, int *ip)
{
	long		l;
	int			i;

	if ((i = FUNC0(nv, &l)) != 0)
		return i;

	if (l < -INT_MAX || l > INT_MAX)
	{
		errno = PGTYPES_NUM_OVERFLOW;
		return -1;
	}

	*ip = (int) l;
	return 0;
}