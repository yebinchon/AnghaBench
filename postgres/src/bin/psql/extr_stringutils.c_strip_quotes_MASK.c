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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int) ; 

void
FUNC2(char *source, char quote, char escape, int encoding)
{
	char	   *src;
	char	   *dst;

	FUNC0(source != NULL);
	FUNC0(quote != '\0');

	src = dst = source;

	if (*src && *src == quote)
		src++;					/* skip leading quote */

	while (*src)
	{
		char		c = *src;
		int			i;

		if (c == quote && src[1] == '\0')
			break;				/* skip trailing quote */
		else if (c == quote && src[1] == quote)
			src++;				/* process doubled quote */
		else if (c == escape && src[1] != '\0')
			src++;				/* process escaped character */

		i = FUNC1(src, encoding);
		while (i--)
			*dst++ = *src++;
	}

	*dst = '\0';
}