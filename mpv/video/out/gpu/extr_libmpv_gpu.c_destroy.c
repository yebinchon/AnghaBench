
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct render_backend {int hwdec_devs; struct priv* priv; } ;
struct priv {TYPE_2__* context; scalar_t__ renderer; } ;
struct TYPE_5__ {struct TYPE_5__* priv; TYPE_1__* fns; } ;
struct TYPE_4__ {int (* destroy ) (TYPE_2__*) ;} ;


 int gl_video_uninit (scalar_t__) ;
 int hwdec_devices_destroy (int ) ;
 int stub1 (TYPE_2__*) ;
 int talloc_free (TYPE_2__*) ;

__attribute__((used)) static void destroy(struct render_backend *ctx)
{
    struct priv *p = ctx->priv;

    if (p->renderer)
        gl_video_uninit(p->renderer);

    hwdec_devices_destroy(ctx->hwdec_devs);

    if (p->context) {
        p->context->fns->destroy(p->context);
        talloc_free(p->context->priv);
        talloc_free(p->context);
    }
}
