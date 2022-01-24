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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINEBUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (char*,char) ; 
 char* FUNC10 (char*,char*) ; 

__attribute__((used)) static void
FUNC11(const char *sourcefile, const char *outfile)
{
	/*
	 * Create a filtered copy of sourcefile, replacing #line x
	 * "./../bla/foo.h" with #line x "foo.h"
	 */
	FILE	   *s,
			   *t;
	char		linebuf[LINEBUFSIZE];

	s = FUNC4(sourcefile, "r");
	if (!s)
	{
		FUNC5(stderr, "Could not open file %s for reading\n", sourcefile);
		FUNC1(2);
	}
	t = FUNC4(outfile, "w");
	if (!t)
	{
		FUNC5(stderr, "Could not open file %s for writing\n", outfile);
		FUNC1(2);
	}

	while (FUNC3(linebuf, LINEBUFSIZE, s))
	{
		/* check for "#line " in the beginning */
		if (FUNC10(linebuf, "#line ") == linebuf)
		{
			char	   *p = FUNC9(linebuf, '"');
			char	   *n;
			int			plen = 1;

			while (*p && (*(p + plen) == '.' || FUNC9(p + plen, '/') != NULL))
			{
				plen++;
			}
			/* plen is one more than the number of . and / characters */
			if (plen > 1)
			{
				n = (char *) FUNC7(plen);
				FUNC0(n, p + 1, plen);
				FUNC8(linebuf, n, "");
			}
		}
		FUNC6(linebuf, t);
	}
	FUNC2(s);
	FUNC2(t);
}