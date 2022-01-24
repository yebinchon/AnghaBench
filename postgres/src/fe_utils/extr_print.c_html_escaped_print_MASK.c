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
 int /*<<< orphan*/  FUNC0 (char const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 

void
FUNC2(const char *in, FILE *fout)
{
	const char *p;
	bool		leading_space = true;

	for (p = in; *p; p++)
	{
		switch (*p)
		{
			case '&':
				FUNC1("&amp;", fout);
				break;
			case '<':
				FUNC1("&lt;", fout);
				break;
			case '>':
				FUNC1("&gt;", fout);
				break;
			case '\n':
				FUNC1("<br />\n", fout);
				break;
			case '"':
				FUNC1("&quot;", fout);
				break;
			case ' ':
				/* protect leading space, for EXPLAIN output */
				if (leading_space)
					FUNC1("&nbsp;", fout);
				else
					FUNC1(" ", fout);
				break;
			default:
				FUNC0(*p, fout);
		}
		if (*p != ' ')
			leading_space = false;
	}
}