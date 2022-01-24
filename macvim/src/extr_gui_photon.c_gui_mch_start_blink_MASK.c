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
struct TYPE_2__ {scalar_t__ in_focus; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLINK_ON ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pt_ARG_TIMER_INITIAL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ blink_offtime ; 
 scalar_t__ blink_ontime ; 
 int /*<<< orphan*/  blink_state ; 
 scalar_t__ blink_waittime ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  gui_ph_timer_cursor ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
    /* Only turn on the timer on if none of the times are zero */
    if (blink_waittime && blink_ontime && blink_offtime && gui.in_focus)
    {
	FUNC0(gui_ph_timer_cursor, Pt_ARG_TIMER_INITIAL,
		blink_waittime, 0);
	blink_state = BLINK_ON;
	FUNC1(TRUE, FALSE);
    }
}