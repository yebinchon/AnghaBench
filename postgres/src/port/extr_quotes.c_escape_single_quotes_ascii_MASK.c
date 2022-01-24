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
 scalar_t__ FUNC0 (char const,int) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char const*) ; 

char *
FUNC3(const char *src)
{
	int			len = FUNC2(src),
				i,
				j;
	char	   *result = FUNC1(len * 2 + 1);

	if (!result)
		return NULL;

	for (i = 0, j = 0; i < len; i++)
	{
		if (FUNC0(src[i], true))
			result[j++] = src[i];
		result[j++] = src[i];
	}
	result[j] = '\0';
	return result;
}