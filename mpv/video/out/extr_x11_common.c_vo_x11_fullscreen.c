
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_rect {scalar_t__ x0; scalar_t__ x1; scalar_t__ y0; scalar_t__ y1; } ;
struct vo_x11_state {scalar_t__ fs; int wm_type; int pos_changed_during_fs; int size_changed_during_fs; int display; int window; struct mp_rect screenrc; struct mp_rect nofsrc; struct mp_rect winrc; scalar_t__ parent; } ;
struct vo {struct vo_x11_state* x11; struct mp_vo_opts* opts; } ;
struct mp_vo_opts {scalar_t__ fullscreen; scalar_t__ ontop; scalar_t__ border; } ;


 int MP_VERBOSE (struct vo_x11_state*,char*) ;
 int RC_H (struct mp_rect) ;
 int RC_W (struct mp_rect) ;
 int XFlush (int ) ;
 int XMoveResizeWindow (int ,int ,scalar_t__,scalar_t__,int ,int ) ;
 int XRaiseWindow (int ,int ) ;
 int vo_wm_FULLSCREEN ;
 int vo_x11_decoration (struct vo*,int) ;
 int vo_x11_move_resize (struct vo*,int,int,struct mp_rect) ;
 int vo_x11_setlayer (struct vo*,int) ;
 int vo_x11_sizehint (struct vo*,struct mp_rect,int) ;
 int vo_x11_update_composition_hint (struct vo*) ;
 int vo_x11_update_geometry (struct vo*) ;
 int vo_x11_update_screeninfo (struct vo*) ;
 int x11_set_ewmh_state (struct vo_x11_state*,char*,scalar_t__) ;

__attribute__((used)) static void vo_x11_fullscreen(struct vo *vo)
{
    struct mp_vo_opts *opts = vo->opts;
    struct vo_x11_state *x11 = vo->x11;

    if (opts->fullscreen == x11->fs)
        return;
    x11->fs = opts->fullscreen;
    if (x11->parent || !x11->window)
        return;


    if (x11->fs) {
        vo_x11_update_geometry(vo);
        x11->nofsrc = x11->winrc;
    }

    struct mp_rect rc = x11->nofsrc;

    if (x11->wm_type & vo_wm_FULLSCREEN) {
        x11_set_ewmh_state(x11, "_NET_WM_STATE_FULLSCREEN", x11->fs);
        if (!x11->fs && (x11->pos_changed_during_fs ||
                         x11->size_changed_during_fs))
        {
            if (x11->screenrc.x0 == rc.x0 && x11->screenrc.x1 == rc.x1 &&
                x11->screenrc.y0 == rc.y0 && x11->screenrc.y1 == rc.y1)
            {

                MP_VERBOSE(x11, "avoiding triggering old-style fullscreen\n");
                rc.x1 -= 1;
                rc.y1 -= 1;
            }
            vo_x11_move_resize(vo, x11->pos_changed_during_fs,
                                   x11->size_changed_during_fs, rc);
        }
    } else {
        if (x11->fs) {
            vo_x11_update_screeninfo(vo);
            rc = x11->screenrc;
        }

        vo_x11_decoration(vo, opts->border && !x11->fs);
        vo_x11_sizehint(vo, rc, 1);

        XMoveResizeWindow(x11->display, x11->window, rc.x0, rc.y0,
                          RC_W(rc), RC_H(rc));

        vo_x11_setlayer(vo, x11->fs || opts->ontop);

        XRaiseWindow(x11->display, x11->window);
        XFlush(x11->display);
    }

    x11->size_changed_during_fs = 0;
    x11->pos_changed_during_fs = 0;

    vo_x11_update_composition_hint(vo);
}
