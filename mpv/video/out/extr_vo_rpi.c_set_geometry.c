
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ y0; scalar_t__ x0; } ;
struct vo_win_geometry {TYPE_2__ win; } ;
struct vo {int dheight; int dwidth; TYPE_1__* opts; struct priv* priv; } ;
struct priv {scalar_t__ y; scalar_t__ x; int h; int w; } ;
struct mp_rect {int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_3__ {scalar_t__ fullscreen; } ;


 scalar_t__ create_overlays (struct vo*) ;
 int resize (struct vo*) ;
 int vo_apply_window_geometry (struct vo*,struct vo_win_geometry*) ;
 int vo_calc_window_geometry (struct vo*,struct mp_rect*,struct vo_win_geometry*) ;

__attribute__((used)) static int set_geometry(struct vo *vo)
{
    struct priv *p = vo->priv;

    if (vo->opts->fullscreen) {
        vo->dwidth = p->w;
        vo->dheight = p->h;
        p->x = p->y = 0;
    } else {
        struct vo_win_geometry geo;
        struct mp_rect screenrc = {0, 0, p->w, p->h};

        vo_calc_window_geometry(vo, &screenrc, &geo);
        vo_apply_window_geometry(vo, &geo);

        p->x = geo.win.x0;
        p->y = geo.win.y0;
    }

    resize(vo);

    if (create_overlays(vo) < 0)
        return -1;

    return 0;
}
