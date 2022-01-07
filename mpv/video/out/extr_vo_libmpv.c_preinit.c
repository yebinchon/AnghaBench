
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_priv {struct mpv_render_context* ctx; } ;
struct vo {int hwdec_devs; int probing; TYPE_1__* global; struct vo_priv* priv; } ;
struct mpv_render_context {int need_resize; int need_update_external; int hwdec_devs; int lock; struct vo* vo; } ;
struct TYPE_2__ {int client_api; } ;


 int MP_FATAL (struct vo*,char*) ;
 int VOCTRL_PREINIT ;
 int control (struct vo*,int ,int *) ;
 struct mpv_render_context* mp_client_api_acquire_render_context (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int preinit(struct vo *vo)
{
    struct vo_priv *p = vo->priv;

    struct mpv_render_context *ctx =
        mp_client_api_acquire_render_context(vo->global->client_api);
    p->ctx = ctx;

    if (!ctx) {
        if (!vo->probing)
            MP_FATAL(vo, "No render context set.\n");
        return -1;
    }

    pthread_mutex_lock(&ctx->lock);
    ctx->vo = vo;
    ctx->need_resize = 1;
    ctx->need_update_external = 1;
    pthread_mutex_unlock(&ctx->lock);

    vo->hwdec_devs = ctx->hwdec_devs;
    control(vo, VOCTRL_PREINIT, ((void*)0));

    return 0;
}
