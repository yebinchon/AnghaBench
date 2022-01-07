
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_x11_state {int window; int display; int fs; } ;
struct vo {TYPE_1__* opts; struct vo_x11_state* x11; } ;
struct TYPE_2__ {int x11_bypass_compositor; } ;


 int PropModeReplace ;
 int XA (struct vo_x11_state*,int ) ;
 int XA_CARDINAL ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,int) ;
 int _NET_WM_BYPASS_COMPOSITOR ;

__attribute__((used)) static void vo_x11_update_composition_hint(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;

    long hint = 0;
    switch (vo->opts->x11_bypass_compositor) {
    case 0: hint = 0; break;
    case 1: hint = 1; break;
    case 2: hint = x11->fs ? 1 : 0; break;
    case 3: hint = 2; break;
    }

    XChangeProperty(x11->display, x11->window, XA(x11,_NET_WM_BYPASS_COMPOSITOR),
                    XA_CARDINAL, 32, PropModeReplace, (unsigned char *)&hint, 1);
}
