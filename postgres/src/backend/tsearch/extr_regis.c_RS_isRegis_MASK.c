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
 int /*<<< orphan*/  ERROR ; 
 int RS_IN_NONEOF ; 
 int RS_IN_ONEOF ; 
 int RS_IN_ONEOF_IN ; 
 int RS_IN_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char) ; 

bool
FUNC4(const char *str)
{
	int			state = RS_IN_WAIT;
	const char *c = str;

	while (*c)
	{
		if (state == RS_IN_WAIT)
		{
			if (FUNC2(c))
				 /* okay */ ;
			else if (FUNC3(c, '['))
				state = RS_IN_ONEOF;
			else
				return false;
		}
		else if (state == RS_IN_ONEOF)
		{
			if (FUNC3(c, '^'))
				state = RS_IN_NONEOF;
			else if (FUNC2(c))
				state = RS_IN_ONEOF_IN;
			else
				return false;
		}
		else if (state == RS_IN_ONEOF_IN || state == RS_IN_NONEOF)
		{
			if (FUNC2(c))
				 /* okay */ ;
			else if (FUNC3(c, ']'))
				state = RS_IN_WAIT;
			else
				return false;
		}
		else
			FUNC0(ERROR, "internal error in RS_isRegis: state %d", state);
		c += FUNC1(c);
	}

	return (state == RS_IN_WAIT);
}