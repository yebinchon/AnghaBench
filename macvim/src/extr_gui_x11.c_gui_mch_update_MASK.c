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
typedef  int XtInputMask ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int XtIMAll ; 
 int XtIMTimer ; 
 int XtIMXEvent ; 
 int /*<<< orphan*/  app_context ; 
 scalar_t__ suppress_alternate_input ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3()
{
    XtInputMask mask, desired;

#ifdef ALT_X_INPUT
    if (suppress_alternate_input)
	desired = (XtIMXEvent | XtIMTimer);
    else
#endif
	desired = (XtIMAll);
    while ((mask = FUNC0(app_context)) && (mask & desired)
	    && !FUNC2())
	FUNC1(app_context, desired);
}