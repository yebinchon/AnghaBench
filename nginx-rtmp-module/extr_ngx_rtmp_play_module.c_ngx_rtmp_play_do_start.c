
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_12__ {int playing; int send_evt; int file; TYPE_2__* fmt; } ;
typedef TYPE_4__ ngx_rtmp_play_ctx_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {scalar_t__ (* start ) (TYPE_3__*,int *) ;} ;
struct TYPE_9__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_post_event (int *,int *) ;
 int ngx_posted_events ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_rtmp_play_module ;
 scalar_t__ stub1 (TYPE_3__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_play_do_start(ngx_rtmp_session_t *s)
{
    ngx_rtmp_play_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_play_module);

    if (ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: start");

    if (ctx->fmt && ctx->fmt->start &&
        ctx->fmt->start(s, &ctx->file) != NGX_OK)
    {
        return NGX_ERROR;
    }

    ngx_post_event((&ctx->send_evt), &ngx_posted_events);

    ctx->playing = 1;

    return NGX_OK;
}
