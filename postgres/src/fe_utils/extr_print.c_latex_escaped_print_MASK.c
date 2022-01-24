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

__attribute__((used)) static void
FUNC2(const char *in, FILE *fout)
{
	const char *p;

	for (p = in; *p; p++)
		switch (*p)
		{
				/*
				 * We convert ASCII characters per the recommendations in
				 * Scott Pakin's "The Comprehensive LATEX Symbol List",
				 * available from CTAN.  For non-ASCII, you're on your own.
				 */
			case '#':
				FUNC1("\\#", fout);
				break;
			case '$':
				FUNC1("\\$", fout);
				break;
			case '%':
				FUNC1("\\%", fout);
				break;
			case '&':
				FUNC1("\\&", fout);
				break;
			case '<':
				FUNC1("\\textless{}", fout);
				break;
			case '>':
				FUNC1("\\textgreater{}", fout);
				break;
			case '\\':
				FUNC1("\\textbackslash{}", fout);
				break;
			case '^':
				FUNC1("\\^{}", fout);
				break;
			case '_':
				FUNC1("\\_", fout);
				break;
			case '{':
				FUNC1("\\{", fout);
				break;
			case '|':
				FUNC1("\\textbar{}", fout);
				break;
			case '}':
				FUNC1("\\}", fout);
				break;
			case '~':
				FUNC1("\\~{}", fout);
				break;
			case '\n':
				/* This is not right, but doing it right seems too hard */
				FUNC1("\\\\", fout);
				break;
			default:
				FUNC0(*p, fout);
		}
}