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
 unsigned char const SS2 ; 
 unsigned char const SS3 ; 

__attribute__((used)) static int
FUNC1(const unsigned char *from, pg_wchar *to, int len)
{
	int			cnt = 0;

	while (len > 0 && *from)
	{
		if (*from == SS2 && len >= 2)	/* JIS X 0201 (so called "1 byte
										 * KANA") */
		{
			from++;
			*to = (SS2 << 8) | *from++;
			len -= 2;
		}
		else if (*from == SS3 && len >= 3)	/* JIS X 0212 KANJI */
		{
			from++;
			*to = (SS3 << 16) | (*from++ << 8);
			*to |= *from++;
			len -= 3;
		}
		else if (FUNC0(*from) && len >= 2) /* JIS X 0208 KANJI */
		{
			*to = *from++ << 8;
			*to |= *from++;
			len -= 2;
		}
		else					/* must be ASCII */
		{
			*to = *from++;
			len--;
		}
		to++;
		cnt++;
	}
	*to = 0;
	return cnt;
}