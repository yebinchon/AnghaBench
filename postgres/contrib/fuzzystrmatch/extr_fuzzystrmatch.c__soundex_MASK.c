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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 size_t SOUNDEX_LEN ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char const) ; 
 scalar_t__ FUNC3 (unsigned char) ; 

__attribute__((used)) static void
FUNC4(const char *instr, char *outstr)
{
	int			count;

	FUNC0(instr);
	FUNC0(outstr);

	outstr[SOUNDEX_LEN] = '\0';

	/* Skip leading non-alphabetic characters */
	while (!FUNC1((unsigned char) instr[0]) && instr[0])
		++instr;

	/* No string left */
	if (!instr[0])
	{
		outstr[0] = (char) 0;
		return;
	}

	/* Take the first letter as is */
	*outstr++ = (char) FUNC3((unsigned char) *instr++);

	count = 1;
	while (*instr && count < SOUNDEX_LEN)
	{
		if (FUNC1((unsigned char) *instr) &&
			FUNC2(*instr) != FUNC2(*(instr - 1)))
		{
			*outstr = FUNC2(instr[0]);
			if (*outstr != '0')
			{
				++outstr;
				++count;
			}
		}
		++instr;
	}

	/* Fill with 0's */
	while (count < SOUNDEX_LEN)
	{
		*outstr = '0';
		++outstr;
		++count;
	}
}