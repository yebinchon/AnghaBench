
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mpv_opengl_cb_update_fn ;
struct TYPE_5__ {void* callback_ctx; int callback; TYPE_1__* client_api; } ;
typedef TYPE_2__ mpv_opengl_cb_context ;
struct TYPE_4__ {scalar_t__ render_context; } ;


 int mpv_render_context_set_update_callback (scalar_t__,int ,void*) ;

void mpv_opengl_cb_set_update_callback(mpv_opengl_cb_context *ctx,
                                       mpv_opengl_cb_update_fn callback,
                                       void *callback_ctx)
{


    if (ctx->client_api->render_context) {
        mpv_render_context_set_update_callback(ctx->client_api->render_context,
                                               callback, callback_ctx);
    }


    ctx->callback = callback;
    ctx->callback_ctx = callback_ctx;
}
