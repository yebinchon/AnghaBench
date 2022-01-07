
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vimTextArea; } ;
struct TYPE_4__ {scalar_t__ reason; } ;
typedef int PtWidget_t ;
typedef TYPE_1__ PtCallbackInfo_t ;


 int MOUSE_SHOW ;
 int Ph_EV_PTR_MOTION_NOBUTTON ;
 int PtAddEventHandler (int ,int ,int ,int *) ;
 int PtRemoveEventHandler (int ,int ,int ,int *) ;
 scalar_t__ Pt_CB_LOST_FOCUS ;
 int Pt_CONTINUE ;
 TYPE_3__ gui ;
 int gui_mch_mousehide (int ) ;
 int gui_ph_handle_mouse ;

__attribute__((used)) static int
gui_ph_handle_focus(PtWidget_t *widget, void *data, PtCallbackInfo_t *info)
{
    if (info->reason == Pt_CB_LOST_FOCUS)
    {
 PtRemoveEventHandler(gui.vimTextArea, Ph_EV_PTR_MOTION_NOBUTTON,
  gui_ph_handle_mouse, ((void*)0));

 gui_mch_mousehide(MOUSE_SHOW);
    }
    else
    {
 PtAddEventHandler(gui.vimTextArea, Ph_EV_PTR_MOTION_NOBUTTON,
  gui_ph_handle_mouse, ((void*)0));
    }
    return Pt_CONTINUE;
}
