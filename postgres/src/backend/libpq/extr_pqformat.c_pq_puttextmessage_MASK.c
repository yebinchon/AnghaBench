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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char,char const*,int) ; 
 int FUNC3 (char const*) ; 

void
FUNC4(char msgtype, const char *str)
{
	int			slen = FUNC3(str);
	char	   *p;

	p = FUNC1(str, slen);
	if (p != str)				/* actual conversion has been done? */
	{
		(void) FUNC2(msgtype, p, FUNC3(p) + 1);
		FUNC0(p);
		return;
	}
	(void) FUNC2(msgtype, str, slen + 1);
}