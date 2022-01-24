#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ in_use; } ;

/* Variables and functions */
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

int
FUNC4()
{
#ifdef FEAT_GUI
    if (gui.in_use)
    {
	gui_mch_update();
	return input_available();
    }
#endif
#ifndef NO_CONSOLE
# ifdef NO_CONSOLE_INPUT
    if (no_console_input())
	return 0;
# endif
    return FUNC2();
#else
    return 0;
#endif
}