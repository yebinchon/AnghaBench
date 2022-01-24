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
typedef  int /*<<< orphan*/  trgm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static trgm *
FUNC4(trgm *tptr, char *str, int bytelen, int charlen)
{
	char	   *ptr = str;

	if (charlen < 3)
		return tptr;

	if (bytelen > charlen)
	{
		/* Find multibyte character boundaries and apply compact_trigram */
		int			lenfirst = FUNC3(str),
					lenmiddle = FUNC3(str + lenfirst),
					lenlast = FUNC3(str + lenfirst + lenmiddle);

		while ((ptr - str) + lenfirst + lenmiddle + lenlast <= bytelen)
		{
			FUNC2(tptr, ptr, lenfirst + lenmiddle + lenlast);

			ptr += lenfirst;
			tptr++;

			lenfirst = lenmiddle;
			lenmiddle = lenlast;
			lenlast = FUNC3(ptr + lenfirst + lenmiddle);
		}
	}
	else
	{
		/* Fast path when there are no multibyte characters */
		FUNC0(bytelen == charlen);

		while (ptr - str < bytelen - 2 /* number of trigrams = strlen - 2 */ )
		{
			FUNC1(tptr, ptr);
			ptr++;
			tptr++;
		}
	}

	return tptr;
}