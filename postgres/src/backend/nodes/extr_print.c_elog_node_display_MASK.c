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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (void const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 

void
FUNC7(int lev, const char *title, const void *obj, bool pretty)
{
	char	   *s;
	char	   *f;

	s = FUNC4(obj);
	if (pretty)
		f = FUNC6(s);
	else
		f = FUNC3(s);
	FUNC5(s);
	FUNC0(lev,
			(FUNC2("%s:", title),
			 FUNC1("%s", f)));
	FUNC5(f);
}