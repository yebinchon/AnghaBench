
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_16__ {scalar_t__ pause; int position; } ;
typedef TYPE_3__ ngx_rtmp_pause_t ;
struct TYPE_17__ {int paused; int * stream; } ;
typedef TYPE_4__ ngx_rtmp_live_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_14__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int next_pause (TYPE_2__*,TYPE_3__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_live_module ;
 int ngx_rtmp_live_start (TYPE_2__*) ;
 int ngx_rtmp_live_stop (TYPE_2__*) ;
 scalar_t__ ngx_rtmp_send_status (TYPE_2__*,char*,char*,char*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_live_pause(ngx_rtmp_session_t *s, ngx_rtmp_pause_t *v)
{
    ngx_rtmp_live_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_live_module);

    if (ctx == ((void*)0) || ctx->stream == ((void*)0)) {
        goto next;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "live: pause=%i timestamp=%f",
                   (ngx_int_t) v->pause, v->position);

    if (v->pause) {
        if (ngx_rtmp_send_status(s, "NetStream.Pause.Notify", "status",
                                 "Paused live")
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        ctx->paused = 1;

        ngx_rtmp_live_stop(s);

    } else {
        if (ngx_rtmp_send_status(s, "NetStream.Unpause.Notify", "status",
                                 "Unpaused live")
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        ctx->paused = 0;

        ngx_rtmp_live_start(s);
    }

next:
    return next_pause(s, v);
}
