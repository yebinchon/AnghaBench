
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ method; } ;
struct xvctx {int vo_gc; int xv_colorkey; TYPE_1__ xv_ck_info; } ;
struct vo_x11_state {int window; int display; } ;
struct vo {struct vo_x11_state* x11; struct xvctx* priv; } ;
struct mp_rect {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;


 scalar_t__ CK_METHOD_BACKGROUND ;
 scalar_t__ CK_METHOD_MANUALFILL ;
 int XFillRectangle (int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int XSetForeground (int ,int ,int ) ;

__attribute__((used)) static void xv_draw_colorkey(struct vo *vo, const struct mp_rect *rc)
{
    struct xvctx *ctx = vo->priv;
    struct vo_x11_state *x11 = vo->x11;
    if (ctx->xv_ck_info.method == CK_METHOD_MANUALFILL ||
        ctx->xv_ck_info.method == CK_METHOD_BACKGROUND)
    {
        if (!ctx->vo_gc)
            return;

        XSetForeground(x11->display, ctx->vo_gc, ctx->xv_colorkey);
        XFillRectangle(x11->display, x11->window, ctx->vo_gc, rc->x0, rc->y0,
                       rc->x1 - rc->x0, rc->y1 - rc->y0);
    }
}
