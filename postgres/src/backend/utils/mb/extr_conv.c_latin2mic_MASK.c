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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,int) ; 

void
FUNC2(const unsigned char *l, unsigned char *p, int len,
		  int lc, int encoding)
{
	int			c1;

	while (len > 0)
	{
		c1 = *l;
		if (c1 == 0)
			FUNC1(encoding, (const char *) l, len);
		if (FUNC0(c1))
			*p++ = lc;
		*p++ = c1;
		l++;
		len--;
	}
	*p = '\0';
}