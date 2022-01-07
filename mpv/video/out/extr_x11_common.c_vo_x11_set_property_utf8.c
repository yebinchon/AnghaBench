
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int window; int display; } ;
struct vo {struct vo_x11_state* x11; } ;
typedef int Atom ;


 int PropModeReplace ;
 int UTF8_STRING ;
 int XA (struct vo_x11_state*,int ) ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void vo_x11_set_property_utf8(struct vo *vo, Atom name, const char *t)
{
    struct vo_x11_state *x11 = vo->x11;

    XChangeProperty(x11->display, x11->window, name, XA(x11, UTF8_STRING), 8,
                    PropModeReplace, t, strlen(t));
}
