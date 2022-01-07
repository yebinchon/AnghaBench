
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvctx {int f_gc; } ;
struct vo_x11_state {int display; } ;
struct vo {int dwidth; int dheight; struct xvctx* priv; struct vo_x11_state* x11; } ;
struct mp_rect {int y0; int y1; int x0; int x1; } ;
typedef int GC ;


 int XFlush (int ) ;
 int fill_rect (struct vo*,int ,int ,int,int,int) ;

__attribute__((used)) static void vo_x11_clear_background(struct vo *vo, const struct mp_rect *rc)
{
    struct vo_x11_state *x11 = vo->x11;
    struct xvctx *ctx = vo->priv;
    GC gc = ctx->f_gc;

    int w = vo->dwidth;
    int h = vo->dheight;

    fill_rect(vo, gc, 0, 0, w, rc->y0);
    fill_rect(vo, gc, 0, rc->y1, w, h);
    fill_rect(vo, gc, 0, rc->y0, rc->x0, rc->y1);
    fill_rect(vo, gc, rc->x1, rc->y0, w, rc->y1);

    XFlush(x11->display);
}
