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
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int INSERT ; 
 int State ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(
	int	 lnum)			/* line number to warp to */
{
    char	 lbuf[256];		/* build line command here */

    if (lnum > 0)
    {
	if (State & INSERT)
	    FUNC0((char_u *) "\033", 1);
	if (FUNC1(lnum))
	    FUNC2(lbuf, "%dG", lnum);
	else
	    FUNC2(lbuf, "%dz.", lnum);
	FUNC0((char_u *) lbuf, FUNC3(lbuf));
    }
}