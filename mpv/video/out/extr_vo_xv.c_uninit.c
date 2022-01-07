
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xvctx {int num_buffers; scalar_t__ f_gc; scalar_t__ vo_gc; int * fo; int * ai; int original_image; } ;
struct vo {TYPE_1__* x11; struct xvctx* priv; } ;
struct TYPE_2__ {int display; } ;


 scalar_t__ None ;
 int XFree (int *) ;
 int XFreeGC (int ,scalar_t__) ;
 int XvFreeAdaptorInfo (int *) ;
 int deallocate_xvimage (struct vo*,int) ;
 int talloc_free (int ) ;
 int vo_x11_uninit (struct vo*) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct xvctx *ctx = vo->priv;
    int i;

    talloc_free(ctx->original_image);

    if (ctx->ai)
        XvFreeAdaptorInfo(ctx->ai);
    ctx->ai = ((void*)0);
    if (ctx->fo) {
        XFree(ctx->fo);
        ctx->fo = ((void*)0);
    }
    for (i = 0; i < ctx->num_buffers; i++)
        deallocate_xvimage(vo, i);
    if (ctx->f_gc != None)
        XFreeGC(vo->x11->display, ctx->f_gc);
    if (ctx->vo_gc != None)
        XFreeGC(vo->x11->display, ctx->vo_gc);

    vo_x11_uninit(vo);
}
