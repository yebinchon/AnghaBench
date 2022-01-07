
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_render_context {int update_lock; int update_cond; int update_cb_ctx; int (* update_cb ) (int ) ;} ;


 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void update(struct mpv_render_context *ctx)
{
    pthread_mutex_lock(&ctx->update_lock);
    if (ctx->update_cb)
        ctx->update_cb(ctx->update_cb_ctx);

    pthread_cond_broadcast(&ctx->update_cond);
    pthread_mutex_unlock(&ctx->update_lock);
}
