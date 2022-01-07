
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BLINK_NONE ;
 scalar_t__ BLINK_OFF ;
 int FALSE ;
 int TRUE ;
 scalar_t__ blink_state ;
 scalar_t__ blink_timer ;
 int gtk_timeout_remove (scalar_t__) ;
 int gui_update_cursor (int ,int ) ;

void
gui_mch_stop_blink(void)
{
    if (blink_timer)
    {
 gtk_timeout_remove(blink_timer);
 blink_timer = 0;
    }
    if (blink_state == BLINK_OFF)
 gui_update_cursor(TRUE, FALSE);
    blink_state = BLINK_NONE;
}
