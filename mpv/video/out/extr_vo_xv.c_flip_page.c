
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xvctx {size_t current_buf; int num_buffers; int Shmem_Flag; int * xvimage; } ;
struct vo {TYPE_1__* x11; struct xvctx* priv; } ;
struct TYPE_2__ {int display; } ;


 int False ;
 int XSync (int ,int ) ;
 int put_xvimage (struct vo*,int ) ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    struct xvctx *ctx = vo->priv;
    put_xvimage(vo, ctx->xvimage[ctx->current_buf]);


    ctx->current_buf = (ctx->current_buf + 1) % ctx->num_buffers;

    if (!ctx->Shmem_Flag)
        XSync(vo->x11->display, False);
}
