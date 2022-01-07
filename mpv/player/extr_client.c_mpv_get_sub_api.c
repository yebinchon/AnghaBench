
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mpv_sub_api ;
struct TYPE_6__ {TYPE_1__* mpctx; } ;
typedef TYPE_2__ mpv_handle ;
struct TYPE_5__ {int initialized; } ;



 void* opengl_cb_get_context (TYPE_2__*) ;

void *mpv_get_sub_api(mpv_handle *ctx, mpv_sub_api sub_api)
{
    if (!ctx->mpctx->initialized)
        return ((void*)0);
    void *res = ((void*)0);
    switch (sub_api) {
    case 128:
        res = opengl_cb_get_context(ctx);
        break;
    default:;
    }
    return res;
}
