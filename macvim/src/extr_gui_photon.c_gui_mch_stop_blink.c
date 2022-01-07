
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BLINK_NONE ;
 scalar_t__ BLINK_OFF ;
 int FALSE ;
 int PtSetResource (int ,int ,int ,int ) ;
 int Pt_ARG_TIMER_INITIAL ;
 int TRUE ;
 scalar_t__ blink_state ;
 int gui_ph_timer_cursor ;
 int gui_update_cursor (int ,int ) ;

void
gui_mch_stop_blink(void)
{
    PtSetResource(gui_ph_timer_cursor, Pt_ARG_TIMER_INITIAL, 0, 0);

    if (blink_state == BLINK_OFF)
 gui_update_cursor(TRUE, FALSE);

    blink_state = BLINK_NONE;
}
