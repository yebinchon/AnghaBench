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
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static char *
FUNC6(const char *str, PQExpBuffer errorMessage)
{
	char	   *buf;
	char	   *p;
	const char *q = str;

	buf = FUNC3(FUNC5(str) + 1);
	if (buf == NULL)
	{
		FUNC4(errorMessage, FUNC2("out of memory\n"));
		return NULL;
	}
	p = buf;

	for (;;)
	{
		if (*q != '%')
		{
			/* copy and check for NUL terminator */
			if (!(*(p++) = *(q++)))
				break;
		}
		else
		{
			int			hi;
			int			lo;
			int			c;

			++q;				/* skip the percent sign itself */

			/*
			 * Possible EOL will be caught by the first call to
			 * get_hexdigit(), so we never dereference an invalid q pointer.
			 */
			if (!(FUNC1(*q++, &hi) && FUNC1(*q++, &lo)))
			{
				FUNC4(errorMessage,
								  FUNC2("invalid percent-encoded token: \"%s\"\n"),
								  str);
				FUNC0(buf);
				return NULL;
			}

			c = (hi << 4) | lo;
			if (c == 0)
			{
				FUNC4(errorMessage,
								  FUNC2("forbidden value %%00 in percent-encoded value: \"%s\"\n"),
								  str);
				FUNC0(buf);
				return NULL;
			}
			*(p++) = c;
		}
	}

	return buf;
}