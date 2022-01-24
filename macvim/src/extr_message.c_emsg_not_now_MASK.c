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
 int FALSE ; 
 int TRUE ; 
 scalar_t__ emsg_off ; 
 scalar_t__ emsg_skip ; 
 int /*<<< orphan*/  p_debug ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char) ; 

int
FUNC1()
{
    if ((emsg_off > 0 && FUNC0(p_debug, 'm') == NULL
					  && FUNC0(p_debug, 't') == NULL)
#ifdef FEAT_EVAL
	    || emsg_skip > 0
#endif
	    )
	return TRUE;
    return FALSE;
}