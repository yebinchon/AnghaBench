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
typedef  int /*<<< orphan*/  PtWidget_t ;
typedef  int /*<<< orphan*/  PtCallbackInfo_t ;

/* Variables and functions */
 scalar_t__ BLINK_OFF ; 
 scalar_t__ BLINK_ON ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pt_ARG_TIMER_INITIAL ; 
 int Pt_CONTINUE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  blink_offtime ; 
 int /*<<< orphan*/  blink_ontime ; 
 scalar_t__ blink_state ; 
 int /*<<< orphan*/  gui_ph_timer_cursor ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(
	PtWidget_t *widget,
	void *data,
	PtCallbackInfo_t *info)
{
    if (blink_state == BLINK_ON)
    {
	FUNC1();
	blink_state = BLINK_OFF;
	FUNC0(gui_ph_timer_cursor, Pt_ARG_TIMER_INITIAL,
		blink_offtime, 0);
    }
    else
    {
	FUNC2(TRUE, FALSE);
	blink_state = BLINK_ON;
	FUNC0(gui_ph_timer_cursor, Pt_ARG_TIMER_INITIAL,
		blink_ontime, 0);
    }
    return Pt_CONTINUE;
}