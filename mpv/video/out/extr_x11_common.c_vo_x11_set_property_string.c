
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vo_x11_state {int window; int display; } ;
struct vo {struct vo_x11_state* x11; } ;
struct TYPE_4__ {scalar_t__ value; int member_0; } ;
typedef TYPE_1__ XTextProperty ;
typedef int Atom ;


 scalar_t__ Success ;
 int XFree (scalar_t__) ;
 int XSetTextProperty (int ,int ,TYPE_1__*,int ) ;
 int XStdICCTextStyle ;
 scalar_t__ Xutf8TextListToTextProperty (int ,char**,int,int ,TYPE_1__*) ;
 int vo_x11_set_property_utf8 (struct vo*,int ,char const*) ;

__attribute__((used)) static void vo_x11_set_property_string(struct vo *vo, Atom name, const char *t)
{
    struct vo_x11_state *x11 = vo->x11;
    XTextProperty prop = {0};

    if (Xutf8TextListToTextProperty(x11->display, (char **)&t, 1,
                                    XStdICCTextStyle, &prop) == Success)
    {
        XSetTextProperty(x11->display, x11->window, &prop, name);
    } else {


        vo_x11_set_property_utf8(vo, name, t);
    }

    if (prop.value)
        XFree(prop.value);
}
