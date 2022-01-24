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
typedef  int /*<<< orphan*/  skip ;
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(void)
{
    char_u	*s;
    static char *skip[] = {"static", "public", "protected", "private"};

    s = FUNC1(FUNC3());

    if (FUNC2(s, "typedef"))
	s = FUNC1(s + 7);

    for (;;)
    {
	int i, l;

	for (i = 0; i < (int)(sizeof(skip) / sizeof(char *)); ++i)
	{
	    l = (int)FUNC4(skip[i]);
	    if (FUNC2(s, skip[i]))
	    {
		s = FUNC1(s + l);
		l = 0;
		break;
	    }
	}
	if (l != 0)
	    break;
    }

    if (FUNC2(s, "enum"))
	return TRUE;

    if (FUNC0(s, (char_u *)"=", (char_u *)"{"))
	return TRUE;

    return FALSE;
}