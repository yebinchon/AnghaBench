
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct vo_win_geometry {int monitor_par; TYPE_1__ win; } ;
struct vo {int monitor_par; scalar_t__ dheight; scalar_t__ dwidth; } ;



void vo_apply_window_geometry(struct vo *vo, const struct vo_win_geometry *geo)
{
    vo->dwidth = geo->win.x1 - geo->win.x0;
    vo->dheight = geo->win.y1 - geo->win.y0;
    vo->monitor_par = geo->monitor_par;
}
