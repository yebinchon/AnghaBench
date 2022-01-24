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
typedef  int pg_wchar ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char const) ; 
 scalar_t__ FUNC1 (unsigned char const) ; 
 scalar_t__ FUNC2 (unsigned char const) ; 
 scalar_t__ FUNC3 (unsigned char const) ; 

__attribute__((used)) static int
FUNC4(const unsigned char *from, pg_wchar *to, int len)
{
	int			cnt = 0;

	while (len > 0 && *from)
	{
		if (FUNC0(*from) && len >= 2)
		{
			*to = *from++ << 16;
			*to |= *from++;
			len -= 2;
		}
		else if (FUNC2(*from) && len >= 3)
		{
			from++;
			*to = *from++ << 16;
			*to |= *from++;
			len -= 3;
		}
		else if (FUNC1(*from) && len >= 3)
		{
			*to = *from++ << 16;
			*to |= *from++ << 8;
			*to |= *from++;
			len -= 3;
		}
		else if (FUNC3(*from) && len >= 4)
		{
			from++;
			*to = *from++ << 16;
			*to |= *from++ << 8;
			*to |= *from++;
			len -= 4;
		}
		else
		{						/* assume ASCII */
			*to = (unsigned char) *from++;
			len--;
		}
		to++;
		cnt++;
	}
	*to = 0;
	return cnt;
}