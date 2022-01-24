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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static char *
FUNC6(const char *src)
{
	char	   *result;
	char	   *data = FUNC0(src);
	char	   *resultp;
	char	   *datap;
	int			nquotes = 0;

	/* count double quotes in data */
	datap = data;
	while ((datap = FUNC3(datap, '"')) != NULL)
	{
		nquotes++;
		datap++;
	}

	result = (char *) FUNC2(FUNC5(data) + 3 + nquotes * 3);
	resultp = result;
	*resultp++ = '"';
	for (datap = data; *datap; datap++)
	{
		if (*datap == '"')
		{
			FUNC4(resultp, "\\042");
			resultp += 4;
		}
		else
			*resultp++ = *datap;
	}
	*resultp++ = '"';
	*resultp = '\0';

	FUNC1(data);
	return result;
}