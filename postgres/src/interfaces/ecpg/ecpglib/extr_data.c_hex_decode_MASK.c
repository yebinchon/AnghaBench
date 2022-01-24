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
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned
FUNC1(const char *src, unsigned len, char *dst)
{
	const char *s,
			   *srcend;
	char		v1,
				v2,
			   *p;

	srcend = src + len;
	s = src;
	p = dst;
	while (s < srcend)
	{
		if (*s == ' ' || *s == '\n' || *s == '\t' || *s == '\r')
		{
			s++;
			continue;
		}
		v1 = FUNC0(*s++) << 4;
		if (s >= srcend)
			return -1;

		v2 = FUNC0(*s++);
		*p++ = v1 | v2;
	}

	return p - dst;
}