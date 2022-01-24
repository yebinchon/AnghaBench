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
 int CONT_INTRPT ; 
 int CONT_N_ADDS ; 
 scalar_t__ CTRL_X_CMDLINE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ CTRL_X_NOT_DEFINED_YET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int compl_cont_status ; 
 scalar_t__ ctrl_x_mode ; 
 int /*<<< orphan*/ * edit_submode ; 
 int /*<<< orphan*/ * edit_submode_pre ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3()
{
    /* CTRL-X after CTRL-X CTRL-V doesn't do anything, so that CTRL-X
     * CTRL-V works like CTRL-N */
    if (ctrl_x_mode != CTRL_X_CMDLINE)
    {
	/* if the next ^X<> won't ADD nothing, then reset
	 * compl_cont_status */
	if (compl_cont_status & CONT_N_ADDS)
	    compl_cont_status |= CONT_INTRPT;
	else
	    compl_cont_status = 0;
	/* We're not sure which CTRL-X mode it will be yet */
	ctrl_x_mode = CTRL_X_NOT_DEFINED_YET;
	edit_submode = (char_u *)FUNC1(FUNC0(ctrl_x_mode));
	edit_submode_pre = NULL;
	FUNC2();
    }
}