
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XtCallbackProc ;
typedef int Widget ;
typedef int Display ;
typedef scalar_t__ Atom ;


 int True ;
 int XmAddProtocolCallback (int ,scalar_t__,scalar_t__,int ,void*) ;
 int XmDO_NOTHING ;
 scalar_t__ XmInternAtom (int *,char*,int ) ;
 int XmNdeleteResponse ;
 int * XtDisplay (int ) ;
 int XtVaSetValues (int ,int ,int ,int *) ;

__attribute__((used)) static void
add_cancel_action(Widget shell, XtCallbackProc close_callback, void *arg)
{
    static Atom wmp_atom = 0;
    static Atom dw_atom = 0;
    Display *display = XtDisplay(shell);


    XtVaSetValues(shell, XmNdeleteResponse, XmDO_NOTHING, ((void*)0));


    if (!dw_atom)
    {
 wmp_atom = XmInternAtom(display, "WM_PROTOCOLS", True);
 dw_atom = XmInternAtom(display, "WM_DELETE_WINDOW", True);
    }
    XmAddProtocolCallback(shell, wmp_atom, dw_atom, close_callback, arg);
}
