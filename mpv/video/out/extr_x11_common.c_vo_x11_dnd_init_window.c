
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int window; int display; } ;
struct vo {struct vo_x11_state* x11; } ;
typedef int Atom ;


 int DND_VERSION ;
 int PropModeReplace ;
 int XA (struct vo_x11_state*,int ) ;
 int XA_ATOM ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,int) ;
 int XdndAware ;

__attribute__((used)) static void vo_x11_dnd_init_window(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;

    Atom version = DND_VERSION;
    XChangeProperty(x11->display, x11->window, XA(x11, XdndAware), XA_ATOM,
                    32, PropModeReplace, (unsigned char *)&version, 1);
}
