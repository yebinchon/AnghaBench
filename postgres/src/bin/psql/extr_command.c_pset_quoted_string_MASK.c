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
 char* FUNC0 (int) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static char *
FUNC2(const char *str)
{
	char	   *ret = FUNC0(FUNC1(str) * 2 + 3);
	char	   *r = ret;

	*r++ = '\'';

	for (; *str; str++)
	{
		if (*str == '\n')
		{
			*r++ = '\\';
			*r++ = 'n';
		}
		else if (*str == '\'')
		{
			*r++ = '\\';
			*r++ = '\'';
		}
		else
			*r++ = *str;
	}

	*r++ = '\'';
	*r = '\0';

	return ret;
}