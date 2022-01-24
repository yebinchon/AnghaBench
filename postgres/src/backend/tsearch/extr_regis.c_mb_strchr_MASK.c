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
 int FUNC0 (char*) ; 

__attribute__((used)) static bool
FUNC1(char *str, char *c)
{
	int			clen,
				plen,
				i;
	char	   *ptr = str;
	bool		res = false;

	clen = FUNC0(c);
	while (*ptr && !res)
	{
		plen = FUNC0(ptr);
		if (plen == clen)
		{
			i = plen;
			res = true;
			while (i--)
				if (*(ptr + i) != *(c + i))
				{
					res = false;
					break;
				}
		}

		ptr += plen;
	}

	return res;
}