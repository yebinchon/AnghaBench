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
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,char) ; 
 int FUNC5 (char const*) ; 

char *
FUNC6(const char *source, const char *entails_quote,
				char quote, char escape, int encoding)
{
	const char *src;
	char	   *ret;
	char	   *dst;
	bool		need_quotes = false;

	FUNC0(source != NULL);
	FUNC0(quote != '\0');

	src = source;
	dst = ret = FUNC3(2 * FUNC5(src) + 3); /* excess */

	*dst++ = quote;

	while (*src)
	{
		char		c = *src;
		int			i;

		if (c == quote)
		{
			need_quotes = true;
			*dst++ = quote;
		}
		else if (c == escape)
		{
			need_quotes = true;
			*dst++ = escape;
		}
		else if (FUNC4(entails_quote, c))
			need_quotes = true;

		i = FUNC1(src, encoding);
		while (i--)
			*dst++ = *src++;
	}

	*dst++ = quote;
	*dst = '\0';

	if (!need_quotes)
	{
		FUNC2(ret);
		ret = NULL;
	}

	return ret;
}