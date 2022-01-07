
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
struct TYPE_5__ {int vindex; int aindex; int file; TYPE_1__* fmt; } ;
typedef TYPE_2__ ngx_rtmp_play_ctx_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_4__ {scalar_t__ (* init ) (int *,int *,int ,int ) ;} ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 TYPE_2__* ngx_rtmp_get_module_ctx (int *,int ) ;
 int ngx_rtmp_play_module ;
 scalar_t__ stub1 (int *,int *,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_play_do_init(ngx_rtmp_session_t *s)
{
    ngx_rtmp_play_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_play_module);

    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    if (ctx->fmt && ctx->fmt->init &&
        ctx->fmt->init(s, &ctx->file, ctx->aindex, ctx->vindex) != NGX_OK)
    {
        return NGX_ERROR;
    }

    return NGX_OK;
}
