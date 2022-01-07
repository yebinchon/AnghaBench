
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_win_geometry {int dummy; } ;
struct vo {int dummy; } ;
struct mp_rect {int dummy; } ;


 int vo_calc_window_geometry2 (struct vo*,struct mp_rect const*,double,struct vo_win_geometry*) ;

void vo_calc_window_geometry(struct vo *vo, const struct mp_rect *screen,
                             struct vo_win_geometry *out_geo)
{
    vo_calc_window_geometry2(vo, screen, 1.0, out_geo);
}
