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
 int FUNC0 (char const*,int) ; 
 int FUNC1 (char const*,int) ; 

int
FUNC2(const char *pwcs, size_t len, int encoding)
{
	int			width = 0;

	while (len > 0)
	{
		int			chlen,
					chwidth;

		chlen = FUNC1(pwcs, encoding);
		if (len < (size_t) chlen)
			break;				/* Invalid string */

		chwidth = FUNC0(pwcs, encoding);
		if (chwidth > 0)
			width += chwidth;

		pwcs += chlen;
		len -= chlen;
	}
	return width;
}