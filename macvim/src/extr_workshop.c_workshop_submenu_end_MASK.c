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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char NUL ; 
 scalar_t__ FUNC1 (int) ; 
 int WS_TRACE ; 
 int WS_TRACE_VERBOSE ; 
 int /*<<< orphan*/  curMenuName ; 
 int /*<<< orphan*/  curMenuPriority ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5()
{
    char		*p;

#ifdef WSDEBUG_TRACE
    if (WSDLEVEL(WS_TRACE_VERBOSE | WS_TRACE)
	    && strncmp(curMenuName, "ToolBar", 7) != 0)
	wstrace("workshop_submenu_end()\n");
#endif

    p = FUNC3(curMenuPriority, '.');
    FUNC0(p != NULL);
    *p = NUL;

    p = FUNC3(curMenuName, '.');
    FUNC0(p != NULL);
    *p = NUL;
}