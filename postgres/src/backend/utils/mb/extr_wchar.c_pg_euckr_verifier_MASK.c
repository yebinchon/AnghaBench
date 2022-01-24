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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

__attribute__((used)) static int
FUNC2(const unsigned char *s, int len)
{
	int			l;
	unsigned char c1,
				c2;

	c1 = *s++;

	if (FUNC1(c1))
	{
		l = 2;
		if (l > len)
			return -1;
		if (!FUNC0(c1))
			return -1;
		c2 = *s++;
		if (!FUNC0(c2))
			return -1;
	}
	else
		/* must be ASCII */
	{
		l = 1;
	}

	return l;
}