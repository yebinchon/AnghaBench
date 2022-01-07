
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xvctx {int xv_port; } ;
struct vo {TYPE_1__* x11; struct xvctx* priv; } ;
struct TYPE_6__ {int name; } ;
typedef TYPE_2__ XvAttribute ;
struct TYPE_5__ {int display; } ;
typedef int Atom ;


 int False ;
 int None ;
 int XFree (TYPE_2__*) ;
 int XInternAtom (int ,char const*,int ) ;
 TYPE_2__* XvQueryPortAttributes (int ,int ,int*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static Atom xv_intern_atom_if_exists(struct vo *vo, char const *atom_name)
{
    struct xvctx *ctx = vo->priv;
    XvAttribute *attributes;
    int attrib_count, i;
    Atom xv_atom = None;

    attributes = XvQueryPortAttributes(vo->x11->display, ctx->xv_port,
                                       &attrib_count);
    if (attributes != ((void*)0)) {
        for (i = 0; i < attrib_count; ++i) {
            if (strcmp(attributes[i].name, atom_name) == 0) {
                xv_atom = XInternAtom(vo->x11->display, atom_name, False);
                break;
            }
        }
        XFree(attributes);
    }

    return xv_atom;
}
