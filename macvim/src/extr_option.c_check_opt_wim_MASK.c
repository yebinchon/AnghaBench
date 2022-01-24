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
typedef  char char_u ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int FAIL ; 
 char NUL ; 
 int OK ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 char WIM_FULL ; 
 char WIM_LIST ; 
 char WIM_LONGEST ; 
 char* p_wim ; 
 char* wim_flags ; 

__attribute__((used)) static int
FUNC2()
{
    char_u	new_wim_flags[4];
    char_u	*p;
    int		i;
    int		idx = 0;

    for (i = 0; i < 4; ++i)
	new_wim_flags[i] = 0;

    for (p = p_wim; *p; ++p)
    {
	for (i = 0; FUNC0(p[i]); ++i)
	    ;
	if (p[i] != NUL && p[i] != ',' && p[i] != ':')
	    return FAIL;
	if (i == 7 && FUNC1(p, "longest", 7) == 0)
	    new_wim_flags[idx] |= WIM_LONGEST;
	else if (i == 4 && FUNC1(p, "full", 4) == 0)
	    new_wim_flags[idx] |= WIM_FULL;
	else if (i == 4 && FUNC1(p, "list", 4) == 0)
	    new_wim_flags[idx] |= WIM_LIST;
	else
	    return FAIL;
	p += i;
	if (*p == NUL)
	    break;
	if (*p == ',')
	{
	    if (idx == 3)
		return FAIL;
	    ++idx;
	}
    }

    /* fill remaining entries with last flag */
    while (idx < 3)
    {
	new_wim_flags[idx + 1] = new_wim_flags[idx];
	++idx;
    }

    /* only when there are no errors, wim_flags[] is changed */
    for (i = 0; i < 4; ++i)
	wim_flags[i] = new_wim_flags[i];
    return OK;
}