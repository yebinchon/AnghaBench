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
 char FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

__attribute__((used)) static unsigned
FUNC2(const char *src, unsigned srclen, char *dst)
{
	const char *end = src + srclen;
	char	   *rp = dst;
	int			len = 0;

	while (src < end)
	{
		unsigned char c = (unsigned char) *src;

		if (c == '\0' || FUNC1(c))
		{
			rp[0] = '\\';
			rp[1] = FUNC0(c >> 6);
			rp[2] = FUNC0((c >> 3) & 7);
			rp[3] = FUNC0(c & 7);
			rp += 4;
			len += 4;
		}
		else if (c == '\\')
		{
			rp[0] = '\\';
			rp[1] = '\\';
			rp += 2;
			len += 2;
		}
		else
		{
			*rp++ = c;
			len++;
		}

		src++;
	}

	return len;
}