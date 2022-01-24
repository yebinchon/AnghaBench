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
typedef  scalar_t__ chr ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const) ; 

__attribute__((used)) static int						/* 0 for equal, nonzero for unequal */
FUNC1(const chr *x, const chr *y, /* strings to compare */
		size_t len)				/* exact length of comparison */
{
	for (; len > 0; len--, x++, y++)
	{
		if ((*x != *y) && (FUNC0(*x) != FUNC0(*y)))
			return 1;
	}
	return 0;
}