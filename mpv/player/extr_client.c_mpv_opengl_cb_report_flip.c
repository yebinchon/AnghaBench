
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* client_api; } ;
typedef TYPE_2__ mpv_opengl_cb_context ;
typedef int int64_t ;
struct TYPE_4__ {int render_context; } ;


 int MPV_ERROR_INVALID_PARAMETER ;
 int mpv_render_context_report_swap (int ) ;

int mpv_opengl_cb_report_flip(mpv_opengl_cb_context *ctx, int64_t time)
{
    if (!ctx->client_api->render_context)
        return MPV_ERROR_INVALID_PARAMETER;

    mpv_render_context_report_swap(ctx->client_api->render_context);
    return 0;
}
