
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL ;
 scalar_t__ FALSE ;
 int OK ;
 int PtProcessEvent () ;
 int PtSetResource (int ,int ,int,int ) ;
 int Pt_ARG_TIMER_INITIAL ;
 scalar_t__ TRUE ;
 int gui_ph_timer_timeout ;
 scalar_t__ input_available () ;
 scalar_t__ is_timeout ;

int
gui_mch_wait_for_chars(int wtime)
{
    is_timeout = FALSE;

    if (wtime > 0)
 PtSetResource(gui_ph_timer_timeout, Pt_ARG_TIMER_INITIAL, wtime, 0);

    while (1)
    {
 PtProcessEvent();
 if (input_available())
 {
     PtSetResource(gui_ph_timer_timeout, Pt_ARG_TIMER_INITIAL, 0, 0);
     return OK;
 }
 else if (is_timeout == TRUE)
     return FAIL;
    }
}
