
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PtWidget_t ;
typedef int PtCallbackInfo_t ;


 int FALSE ;
 int Pt_CONTINUE ;
 int RESIZE_BOTH ;
 int TRUE ;
 int gui_set_shellsize (int ,int ,int ) ;

__attribute__((used)) static int
gui_ph_handle_window_open(
 PtWidget_t *widget,
 void *data,
 PtCallbackInfo_t *info)
{
    gui_set_shellsize(FALSE, TRUE, RESIZE_BOTH);
    return Pt_CONTINUE;
}
