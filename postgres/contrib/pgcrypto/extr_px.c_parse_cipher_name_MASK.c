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
 int PXE_BAD_FORMAT ; 
 int PXE_BAD_OPTION ; 
 char* FUNC0 (char*,char) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2(char *full, char **cipher, char **pad)
{
	char	   *p,
			   *p2,
			   *q;

	*cipher = full;
	*pad = NULL;

	p = FUNC0(full, '/');
	if (p != NULL)
		*p++ = 0;
	while (p != NULL)
	{
		if ((q = FUNC0(p, '/')) != NULL)
			*q++ = 0;

		if (!*p)
		{
			p = q;
			continue;
		}
		p2 = FUNC0(p, ':');
		if (p2 != NULL)
		{
			*p2++ = 0;
			if (FUNC1(p, "pad") == 0)
				*pad = p2;
			else
				return PXE_BAD_OPTION;
		}
		else
			return PXE_BAD_FORMAT;

		p = q;
	}
	return 0;
}