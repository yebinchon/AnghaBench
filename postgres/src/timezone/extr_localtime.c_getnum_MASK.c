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
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static const char *
FUNC1(const char *strp, int *const nump, const int min, const int max)
{
	char		c;
	int			num;

	if (strp == NULL || !FUNC0(c = *strp))
		return NULL;
	num = 0;
	do
	{
		num = num * 10 + (c - '0');
		if (num > max)
			return NULL;		/* illegal value */
		c = *++strp;
	} while (FUNC0(c));
	if (num < min)
		return NULL;			/* illegal value */
	*nump = num;
	return strp;
}