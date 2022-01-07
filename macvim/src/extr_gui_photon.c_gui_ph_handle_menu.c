
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vimmenu_T ;
typedef int PtWidget_t ;
typedef int PtCallbackInfo_t ;


 int Pt_CONTINUE ;
 int gui_menu_cb (int *) ;

__attribute__((used)) static int
gui_ph_handle_menu(PtWidget_t *widget, void *data, PtCallbackInfo_t *info)
{
    if (data != ((void*)0))
    {
 vimmenu_T *menu = (vimmenu_T *) data;
 gui_menu_cb(menu);
    }
    return Pt_CONTINUE;
}
