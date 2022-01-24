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
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned char const*,unsigned char const*,int) ; 

int
FUNC2(const unsigned char *l, const unsigned char *r, int n)
{
	unsigned int lb,
				rb;
	int			x,
				b;

	b = n / 8;
	x = FUNC1(l, r, b);
	if (x || (n % 8) == 0)
		return x;

	lb = l[b];
	rb = r[b];
	for (b = n % 8; b > 0; b--)
	{
		if (FUNC0(lb) != FUNC0(rb))
		{
			if (FUNC0(lb))
				return 1;
			return -1;
		}
		lb <<= 1;
		rb <<= 1;
	}
	return 0;
}