
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XtIntervalId ;


 scalar_t__ BLINK_NONE ;
 scalar_t__ BLINK_OFF ;
 int FALSE ;
 int TRUE ;
 int XtRemoveTimeOut (scalar_t__) ;
 scalar_t__ blink_state ;
 scalar_t__ blink_timer ;
 int gui_update_cursor (int ,int ) ;

void
gui_mch_stop_blink()
{
    if (blink_timer != (XtIntervalId)0)
    {
 XtRemoveTimeOut(blink_timer);
 blink_timer = (XtIntervalId)0;
    }
    if (blink_state == BLINK_OFF)
 gui_update_cursor(TRUE, FALSE);
    blink_state = BLINK_NONE;
}
