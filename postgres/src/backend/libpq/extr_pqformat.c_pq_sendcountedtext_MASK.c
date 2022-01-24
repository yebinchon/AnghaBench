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
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*) ; 

void
FUNC5(StringInfo buf, const char *str, int slen,
				   bool countincludesself)
{
	int			extra = countincludesself ? 4 : 0;
	char	   *p;

	p = FUNC2(str, slen);
	if (p != str)				/* actual conversion has been done? */
	{
		slen = FUNC4(p);
		FUNC3(buf, slen + extra);
		FUNC0(buf, p, slen);
		FUNC1(p);
	}
	else
	{
		FUNC3(buf, slen + extra);
		FUNC0(buf, str, slen);
	}
}