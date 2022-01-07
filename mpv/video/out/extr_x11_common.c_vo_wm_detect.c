
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_x11_state {scalar_t__ parent; int rootwin; } ;
struct vo {TYPE_1__* opts; struct vo_x11_state* x11; } ;
typedef int Window ;
struct TYPE_2__ {scalar_t__ x11_netwm; } ;
typedef scalar_t__ Atom ;


 int MP_DBG (struct vo_x11_state*,char*) ;
 int MP_WARN (struct vo_x11_state*,char*) ;
 scalar_t__ XA (struct vo_x11_state*,int ) ;
 int XA_ATOM ;
 int XFree (scalar_t__*) ;
 int _NET_SUPPORTED ;
 int _WIN_LAYER ;
 int _WIN_PROTOCOLS ;
 int net_wm_support_state_test (struct vo_x11_state*,scalar_t__) ;
 int vo_wm_FULLSCREEN ;
 int vo_wm_LAYER ;
 scalar_t__* x11_get_property (struct vo_x11_state*,int ,scalar_t__,int ,int,int*) ;

__attribute__((used)) static int vo_wm_detect(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;
    int i;
    int wm = 0;
    int nitems;
    Atom *args = ((void*)0);
    Window win = x11->rootwin;

    if (x11->parent)
        return 0;


    args = x11_get_property(x11, win, XA(x11, _WIN_PROTOCOLS), XA_ATOM, 32,
                            &nitems);
    if (args) {
        for (i = 0; i < nitems; i++) {
            if (args[i] == XA(x11, _WIN_LAYER)) {
                MP_DBG(x11, "Detected wm supports layers.\n");
                wm |= vo_wm_LAYER;
            }
        }
        XFree(args);
    }

    args = x11_get_property(x11, win, XA(x11, _NET_SUPPORTED), XA_ATOM, 32,
                            &nitems);
    if (args) {
        MP_DBG(x11, "Detected wm supports NetWM.\n");
        if (vo->opts->x11_netwm >= 0) {
            for (i = 0; i < nitems; i++)
                wm |= net_wm_support_state_test(vo->x11, args[i]);
        } else {
            MP_DBG(x11, "NetWM usage disabled by user.\n");
        }
        XFree(args);
    }

    if (wm == 0)
        MP_DBG(x11, "Unknown wm type...\n");
    if (vo->opts->x11_netwm > 0 && !(wm & vo_wm_FULLSCREEN)) {
        MP_WARN(x11, "Forcing NetWM FULLSCREEN support.\n");
        wm |= vo_wm_FULLSCREEN;
    }
    return wm;
}
