
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vo_x11_state {int window; int display; scalar_t__ parent; } ;
struct vo {struct vo_x11_state* x11; } ;
typedef int mhints ;
struct TYPE_3__ {int functions; int decorations; int flags; int member_0; } ;
typedef TYPE_1__ MotifWmHints ;
typedef int Atom ;


 int MWM_DECOR_ALL ;
 int MWM_FUNC_CLOSE ;
 int MWM_FUNC_MAXIMIZE ;
 int MWM_FUNC_MINIMIZE ;
 int MWM_FUNC_MOVE ;
 int MWM_FUNC_RESIZE ;
 int MWM_HINTS_DECORATIONS ;
 int MWM_HINTS_FUNCTIONS ;
 int PropModeReplace ;
 int XA (struct vo_x11_state*,int ) ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,int) ;
 int _MOTIF_WM_HINTS ;
 int x11_get_property_copy (struct vo_x11_state*,int ,int ,int ,int,TYPE_1__*,int) ;

__attribute__((used)) static void vo_x11_decoration(struct vo *vo, bool d)
{
    struct vo_x11_state *x11 = vo->x11;

    if (x11->parent || !x11->window)
        return;

    Atom motif_hints = XA(x11, _MOTIF_WM_HINTS);
    MotifWmHints mhints = {0};
    bool got = x11_get_property_copy(x11, x11->window, motif_hints,
                                     motif_hints, 32, &mhints, sizeof(mhints));

    if (!got && d)
        return;
    if (!got) {
        mhints.flags = MWM_HINTS_FUNCTIONS;
        mhints.functions = MWM_FUNC_MOVE | MWM_FUNC_CLOSE | MWM_FUNC_MINIMIZE |
                           MWM_FUNC_MAXIMIZE | MWM_FUNC_RESIZE;
    }
    mhints.flags |= MWM_HINTS_DECORATIONS;
    mhints.decorations = d ? MWM_DECOR_ALL : 0;
    XChangeProperty(x11->display, x11->window, motif_hints, motif_hints, 32,
                    PropModeReplace, (unsigned char *) &mhints, 5);
}
