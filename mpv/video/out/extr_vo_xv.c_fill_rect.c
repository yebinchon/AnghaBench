
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {scalar_t__ window; int display; } ;
struct vo {int dheight; int dwidth; struct vo_x11_state* x11; } ;
typedef scalar_t__ GC ;


 int MPMAX (int,int ) ;
 int MPMIN (int,int ) ;
 int XFillRectangle (int ,scalar_t__,scalar_t__,int,int,int,int) ;

__attribute__((used)) static void fill_rect(struct vo *vo, GC gc, int x0, int y0, int x1, int y1)
{
    struct vo_x11_state *x11 = vo->x11;

    x0 = MPMAX(x0, 0);
    y0 = MPMAX(y0, 0);
    x1 = MPMIN(x1, vo->dwidth);
    y1 = MPMIN(y1, vo->dheight);

    if (x11->window && gc && x1 > x0 && y1 > y0)
        XFillRectangle(x11->display, x11->window, gc, x0, y0, x1 - x0, y1 - y0);
}
