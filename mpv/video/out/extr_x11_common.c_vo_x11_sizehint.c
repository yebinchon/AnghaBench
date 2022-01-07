
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vo_x11_state {int window; int display; scalar_t__ parent; } ;
struct vo {struct vo_x11_state* x11; struct mp_vo_opts* opts; } ;
struct TYPE_8__ {scalar_t__ xy_valid; } ;
struct mp_vo_opts {scalar_t__ screen_id; scalar_t__ keepaspect_window; scalar_t__ keepaspect; scalar_t__ force_window_position; TYPE_1__ geometry; } ;
struct mp_rect {int y0; int x0; } ;
struct TYPE_10__ {int y; int x; } ;
struct TYPE_9__ {int y; int x; } ;
struct TYPE_11__ {int flags; int min_width; int min_height; int win_gravity; int height; TYPE_3__ max_aspect; int width; TYPE_2__ min_aspect; scalar_t__ max_height; scalar_t__ max_width; int y; int x; } ;
typedef TYPE_4__ XSizeHints ;


 int CenterGravity ;
 int PAspect ;
 int PMinSize ;
 int PPosition ;
 int PSize ;
 int PWinGravity ;
 int RC_H (struct mp_rect) ;
 int RC_W (struct mp_rect) ;
 TYPE_4__* XAllocSizeHints () ;
 int XFree (TYPE_4__*) ;
 int XSetWMNormalHints (int ,int ,TYPE_4__*) ;

__attribute__((used)) static void vo_x11_sizehint(struct vo *vo, struct mp_rect rc, bool override_pos)
{
    struct mp_vo_opts *opts = vo->opts;
    struct vo_x11_state *x11 = vo->x11;

    if (!x11->window || x11->parent)
        return;

    bool force_pos = opts->geometry.xy_valid ||
                     opts->force_window_position ||
                     opts->screen_id >= 0 ||
                     x11->parent ||
                     override_pos;

    XSizeHints *hint = XAllocSizeHints();
    if (!hint)
        return;

    hint->flags |= PSize | (force_pos ? PPosition : 0);
    hint->x = rc.x0;
    hint->y = rc.y0;
    hint->width = RC_W(rc);
    hint->height = RC_H(rc);
    hint->max_width = 0;
    hint->max_height = 0;

    if (opts->keepaspect && opts->keepaspect_window) {
        hint->flags |= PAspect;
        hint->min_aspect.x = hint->width;
        hint->min_aspect.y = hint->height;
        hint->max_aspect.x = hint->width;
        hint->max_aspect.y = hint->height;
    }


    hint->flags |= PMinSize;
    hint->min_width = hint->min_height = 4;




    hint->flags |= PWinGravity;
    hint->win_gravity = CenterGravity;

    XSetWMNormalHints(x11->display, x11->window, hint);
    XFree(hint);
}
