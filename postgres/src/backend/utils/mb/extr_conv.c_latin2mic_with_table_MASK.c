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
 unsigned char HIGHBIT ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  PG_MULE_INTERNAL ; 
 int /*<<< orphan*/  FUNC1 (int,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char const*,int) ; 

void
FUNC3(const unsigned char *l,
					 unsigned char *p,
					 int len,
					 int lc,
					 int encoding,
					 const unsigned char *tab)
{
	unsigned char c1,
				c2;

	while (len > 0)
	{
		c1 = *l;
		if (c1 == 0)
			FUNC1(encoding, (const char *) l, len);
		if (!FUNC0(c1))
			*p++ = c1;
		else
		{
			c2 = tab[c1 - HIGHBIT];
			if (c2)
			{
				*p++ = lc;
				*p++ = c2;
			}
			else
				FUNC2(encoding, PG_MULE_INTERNAL,
										   (const char *) l, len);
		}
		l++;
		len--;
	}
	*p = '\0';
}