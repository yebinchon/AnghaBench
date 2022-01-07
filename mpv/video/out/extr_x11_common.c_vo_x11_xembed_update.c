
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int window; int display; int parent; } ;
typedef int Atom ;


 int PropModeReplace ;
 int XA (struct vo_x11_state*,int ) ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,char*,int) ;
 int XEMBED_VERSION ;
 int _XEMBED_INFO ;

__attribute__((used)) static void vo_x11_xembed_update(struct vo_x11_state *x11, int flags)
{
    if (!x11->window || !x11->parent)
        return;

    long xembed_info[] = {XEMBED_VERSION, flags};
    Atom name = XA(x11, _XEMBED_INFO);
    XChangeProperty(x11->display, x11->window, name, name, 32,
                    PropModeReplace, (char *)xembed_info, 2);
}
