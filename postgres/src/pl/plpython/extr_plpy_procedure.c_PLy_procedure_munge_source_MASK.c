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
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (size_t) ; 
 int FUNC3 (char*,size_t,char*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5(const char *name, const char *src)
{
	char	   *mrc,
			   *mp;
	const char *sp;
	size_t		mlen;
	int			plen;

	/*
	 * room for function source and the def statement
	 */
	mlen = (FUNC4(src) * 2) + FUNC4(name) + 16;

	mrc = FUNC2(mlen);
	plen = FUNC3(mrc, mlen, "def %s():\n\t", name);
	FUNC0(plen >= 0 && plen < mlen);

	sp = src;
	mp = mrc + plen;

	while (*sp != '\0')
	{
		if (*sp == '\r' && *(sp + 1) == '\n')
			sp++;

		if (*sp == '\n' || *sp == '\r')
		{
			*mp++ = '\n';
			*mp++ = '\t';
			sp++;
		}
		else
			*mp++ = *sp++;
	}
	*mp++ = '\n';
	*mp++ = '\n';
	*mp = '\0';

	if (mp > (mrc + mlen))
		FUNC1(FATAL, "buffer overrun in PLy_procedure_munge_source");

	return mrc;
}