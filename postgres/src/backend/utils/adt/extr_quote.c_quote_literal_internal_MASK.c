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
 int /*<<< orphan*/  ESCAPE_STRING_SYNTAX ; 
 scalar_t__ FUNC0 (char const,int) ; 

__attribute__((used)) static size_t
FUNC1(char *dst, const char *src, size_t len)
{
	const char *s;
	char	   *savedst = dst;

	for (s = src; s < src + len; s++)
	{
		if (*s == '\\')
		{
			*dst++ = ESCAPE_STRING_SYNTAX;
			break;
		}
	}

	*dst++ = '\'';
	while (len-- > 0)
	{
		if (FUNC0(*src, true))
			*dst++ = *src;
		*dst++ = *src++;
	}
	*dst++ = '\'';

	return dst - savedst;
}