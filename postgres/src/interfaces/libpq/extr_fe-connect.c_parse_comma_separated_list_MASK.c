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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC2(char **startptr, bool *more)
{
	char	   *p;
	char	   *s = *startptr;
	char	   *e;
	int			len;

	/*
	 * Search for the end of the current element; a comma or end-of-string
	 * acts as a terminator.
	 */
	e = s;
	while (*e != '\0' && *e != ',')
		++e;
	*more = (*e == ',');

	len = e - s;
	p = (char *) FUNC0(sizeof(char) * (len + 1));
	if (p)
	{
		FUNC1(p, s, len);
		p[len] = '\0';
	}
	*startptr = e + 1;

	return p;
}