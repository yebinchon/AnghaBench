
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_rect {int x1; int x0; int y1; int y0; } ;
struct xvctx {int vo_gc; int xv_port; scalar_t__ Shmem_Flag; struct mp_rect dst_rect; struct mp_rect src_rect; } ;
struct vo_x11_state {int window; int display; int ShmCompletionWaitCount; } ;
struct vo {struct vo_x11_state* x11; struct xvctx* priv; } ;
typedef int XvImage ;


 int True ;
 int XvPutImage (int ,int ,int ,int ,int *,int,int,int,int,int,int,int,int) ;
 int XvShmPutImage (int ,int ,int ,int ,int *,int,int,int,int,int,int,int,int,int ) ;

__attribute__((used)) static inline void put_xvimage(struct vo *vo, XvImage *xvi)
{
    struct xvctx *ctx = vo->priv;
    struct vo_x11_state *x11 = vo->x11;
    struct mp_rect *src = &ctx->src_rect;
    struct mp_rect *dst = &ctx->dst_rect;
    int dw = dst->x1 - dst->x0, dh = dst->y1 - dst->y0;
    int sw = src->x1 - src->x0, sh = src->y1 - src->y0;

    if (ctx->Shmem_Flag) {
        XvShmPutImage(x11->display, ctx->xv_port, x11->window, ctx->vo_gc, xvi,
                      src->x0, src->y0, sw, sh,
                      dst->x0, dst->y0, dw, dh,
                      True);
        x11->ShmCompletionWaitCount++;
    } else {
        XvPutImage(x11->display, ctx->xv_port, x11->window, ctx->vo_gc, xvi,
                   src->x0, src->y0, sw, sh,
                   dst->x0, dst->y0, dw, dh);
    }
}
