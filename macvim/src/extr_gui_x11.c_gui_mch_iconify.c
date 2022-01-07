
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dpy; } ;


 int DefaultScreen (int ) ;
 int XIconifyWindow (int ,int ,int ) ;
 int XtWindow (int ) ;
 TYPE_1__ gui ;
 int vimShell ;

void
gui_mch_iconify()
{
    XIconifyWindow(gui.dpy, XtWindow(vimShell), DefaultScreen(gui.dpy));
}
