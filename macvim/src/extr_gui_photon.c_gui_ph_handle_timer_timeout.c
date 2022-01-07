
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PtWidget_t ;
typedef int PtCallbackInfo_t ;


 int Pt_CONTINUE ;
 int TRUE ;
 int is_timeout ;

__attribute__((used)) static int
gui_ph_handle_timer_timeout(PtWidget_t *widget, void *data, PtCallbackInfo_t *info)
{
    is_timeout = TRUE;

    return Pt_CONTINUE;
}
