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
typedef  scalar_t__ char_u ;

/* Variables and functions */
 scalar_t__ NUL ; 
 scalar_t__* FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__* p_sh ; 
 scalar_t__* FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__* FUNC4 (scalar_t__*,int) ; 
 scalar_t__* FUNC5 (scalar_t__*) ; 

char_u *
FUNC6()
{
    char_u *p;

#ifdef WIN3264
    p = gettail(p_sh);
    p = vim_strnsave(p, (int)(skiptowhite(p) - p));
#else
    p = FUNC2(p_sh);
    if (*p == NUL)
    {
	/* No white space, use the tail. */
	p = FUNC5(FUNC0(p_sh));
    }
    else
    {
	char_u  *p1, *p2;

	/* Find the last path separator before the space. */
	p1 = p_sh;
	for (p2 = p_sh; p2 < p; FUNC1(p2))
	    if (FUNC3(*p2))
		p1 = p2 + 1;
	p = FUNC4(p1, (int)(p - p1));
    }
#endif
    return p;
}