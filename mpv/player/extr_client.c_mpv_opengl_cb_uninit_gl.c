
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* client_api; } ;
typedef TYPE_2__ mpv_opengl_cb_context ;
struct TYPE_4__ {int * render_context; } ;


 int mpv_render_context_free (int *) ;

int mpv_opengl_cb_uninit_gl(mpv_opengl_cb_context *ctx)
{
    if (ctx->client_api->render_context)
        mpv_render_context_free(ctx->client_api->render_context);
    ctx->client_api->render_context = ((void*)0);
    return 0;
}
