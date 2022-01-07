
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_10__ {int opened; int id; int audio; int video; } ;
typedef TYPE_3__ ngx_rtmp_dash_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_rtmp_dash_module ;
 int ngx_rtmp_dash_open_fragment (TYPE_2__*,int *,int ,char) ;
 TYPE_3__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_dash_open_fragments(ngx_rtmp_session_t *s)
{
    ngx_rtmp_dash_ctx_t *ctx;

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "dash: open fragments");

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_dash_module);

    if (ctx->opened) {
        return NGX_OK;
    }

    ngx_rtmp_dash_open_fragment(s, &ctx->video, ctx->id, 'v');

    ngx_rtmp_dash_open_fragment(s, &ctx->audio, ctx->id, 'a');

    ctx->opened = 1;

    return NGX_OK;
}
