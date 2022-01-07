
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pointer_hidden; int vimTextArea; } ;


 int GUI_PH_MOUSE_TYPE ;
 int MOUSE_SHOW ;
 int Ph_CURSOR_NONE ;
 int PtSetResource (int ,int ,int ,int ) ;
 int Pt_ARG_CURSOR_TYPE ;
 TYPE_1__ gui ;
 int last_shape ;
 int mch_set_mouse_shape (int ) ;

void
gui_mch_mousehide(int hide)
{
    if (gui.pointer_hidden != hide)
    {
 gui.pointer_hidden = hide;







 PtSetResource(gui.vimTextArea, Pt_ARG_CURSOR_TYPE,
  (hide == MOUSE_SHOW) ? GUI_PH_MOUSE_TYPE : Ph_CURSOR_NONE,
  0);

    }
}
