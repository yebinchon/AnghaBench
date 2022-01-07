
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * XtPointer ;
struct TYPE_2__ {int toolbar_height; int menu_width; int menu_height; int dpy; int blank_pointer; int wid; } ;
typedef int EventMask ;


 size_t DELETE_WINDOW_IDX ;
 int False ;
 int NoEventMask ;
 int OK ;
 int PropertyChangeMask ;
 size_t SAVE_YOURSELF_IDX ;
 int True ;
 int XInternAtom (int ,char*,int ) ;
 int XSetWMProtocols (int ,int ,int *,int) ;
 int XtAddEventHandler (int ,int ,int ,int ,int *) ;
 int XtManageChild (int ) ;
 int XtNameToWidget (int ,char*) ;
 int XtRealizeWidget (int ) ;
 int XtWindow (int ) ;
 int _XEditResCheckMessages ;
 int commWindow ;
 TYPE_1__ gui ;
 int gui_mch_set_toolbar_pos (int ,int ,int ,int ) ;
 int gui_position_menu () ;
 int gui_x11_create_blank_mouse () ;
 int gui_x11_get_wid () ;
 int gui_x11_send_event_handler ;
 int gui_x11_wm_protocol_handler ;
 int hangul_keyboard_set () ;
 int highlight_gui_started () ;
 int serverChangeRegisteredWindow (int ,int ) ;
 int * serverDelayedStartName ;
 int * serverName ;
 int serverRegisterName (int ,int *) ;
 int vimShell ;
 int * wm_atoms ;
 int workshop_postinit () ;
 int xim_init () ;

int
gui_mch_open()
{

    XtRealizeWidget(vimShell);
    XtManageChild(XtNameToWidget(vimShell, "*vimForm"));

    gui.wid = gui_x11_get_wid();
    gui.blank_pointer = gui_x11_create_blank_mouse();





    wm_atoms[SAVE_YOURSELF_IDX] =
         XInternAtom(gui.dpy, "WM_SAVE_YOURSELF", False);
    wm_atoms[DELETE_WINDOW_IDX] =
         XInternAtom(gui.dpy, "WM_DELETE_WINDOW", False);
    XSetWMProtocols(gui.dpy, XtWindow(vimShell), wm_atoms, 2);
    XtAddEventHandler(vimShell, NoEventMask, True, gui_x11_wm_protocol_handler,
            ((void*)0));
    highlight_gui_started();
    return OK;
}
