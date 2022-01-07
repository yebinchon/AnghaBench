
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pointer_hidden; TYPE_1__* drawarea; int * blank_pointer; } ;
struct TYPE_3__ {scalar_t__ window; } ;


 int gdk_window_set_cursor (scalar_t__,int *) ;
 TYPE_2__ gui ;
 int last_shape ;
 int mch_set_mouse_shape (int ) ;

void
gui_mch_mousehide(int hide)
{
    if (gui.pointer_hidden != hide)
    {
 gui.pointer_hidden = hide;
 if (gui.drawarea->window && gui.blank_pointer != ((void*)0))
 {
     if (hide)
  gdk_window_set_cursor(gui.drawarea->window, gui.blank_pointer);
     else



  gdk_window_set_cursor(gui.drawarea->window, ((void*)0));

 }
    }
}
