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
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int PAE_INMASK ; 
 int PAE_WAIT_MASK ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static bool
FUNC4(char **str, char *next)
{
	int			state = PAE_WAIT_MASK;
	int			avail = BUFSIZ;

	while (**str)
	{
		if (state == PAE_WAIT_MASK)
		{
			if (FUNC2(*str, '#'))
				return false;
			else if (!FUNC3(*str))
			{
				int			clen = FUNC1(*str);

				if (clen < avail)
				{
					FUNC0(next, *str);
					next += clen;
					avail -= clen;
				}
				state = PAE_INMASK;
			}
		}
		else					/* state == PAE_INMASK */
		{
			if (FUNC3(*str))
			{
				*next = '\0';
				return true;
			}
			else
			{
				int			clen = FUNC1(*str);

				if (clen < avail)
				{
					FUNC0(next, *str);
					next += clen;
					avail -= clen;
				}
			}
		}
		*str += FUNC1(*str);
	}

	*next = '\0';

	return (state == PAE_INMASK);	/* OK if we got a nonempty field */
}