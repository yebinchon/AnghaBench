
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_x11_state {int wm_type; int fs; int pos_changed_during_fs; int size_changed_during_fs; int nofsrc; int pending_vo_events; int window; scalar_t__ parent; } ;
struct vo {TYPE_1__* opts; struct vo_x11_state* x11; } ;
struct TYPE_2__ {int fullscreen; } ;
typedef long Atom ;


 int VO_EVENT_FULLSCREEN_STATE ;
 long XA (struct vo_x11_state*,int ) ;
 int XA_ATOM ;
 int XFree (long*) ;
 int _NET_WM_STATE ;
 int _NET_WM_STATE_FULLSCREEN ;
 int vo_wm_FULLSCREEN ;
 int vo_x11_move_resize (struct vo*,int,int,int ) ;
 int vo_x11_update_composition_hint (struct vo*) ;
 long* x11_get_property (struct vo_x11_state*,int ,long,int ,int,int*) ;

__attribute__((used)) static void vo_x11_check_net_wm_state_fullscreen_change(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;

    if (x11->parent)
        return;

    if (x11->wm_type & vo_wm_FULLSCREEN) {
        int num_elems;
        long *elems = x11_get_property(x11, x11->window, XA(x11, _NET_WM_STATE),
                                       XA_ATOM, 32, &num_elems);
        int is_fullscreen = 0;
        if (elems) {
            Atom fullscreen_prop = XA(x11, _NET_WM_STATE_FULLSCREEN);
            for (int n = 0; n < num_elems; n++) {
                if (elems[n] == fullscreen_prop) {
                    is_fullscreen = 1;
                    break;
                }
            }
            XFree(elems);
        }

        if ((vo->opts->fullscreen && !is_fullscreen) ||
            (!vo->opts->fullscreen && is_fullscreen))
        {
            vo->opts->fullscreen = is_fullscreen;
            x11->fs = is_fullscreen;
            x11->pending_vo_events |= VO_EVENT_FULLSCREEN_STATE;

            if (!is_fullscreen && (x11->pos_changed_during_fs ||
                                   x11->size_changed_during_fs))
            {
                vo_x11_move_resize(vo, x11->pos_changed_during_fs,
                                       x11->size_changed_during_fs,
                                       x11->nofsrc);
            }

            x11->size_changed_during_fs = 0;
            x11->pos_changed_during_fs = 0;

            vo_x11_update_composition_hint(vo);
        }
    }
}
