
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_16__ {scalar_t__ fd; } ;
struct TYPE_18__ {int opened; TYPE_2__ file; } ;
typedef TYPE_4__ ngx_rtmp_play_ctx_t ;
struct TYPE_19__ {scalar_t__ pause; int position; } ;
typedef TYPE_5__ ngx_rtmp_pause_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {int log; } ;


 int NGX_ERROR ;
 scalar_t__ NGX_INVALID_FILE ;
 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int next_pause (TYPE_3__*,TYPE_5__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_rtmp_play_do_start (TYPE_3__*) ;
 int ngx_rtmp_play_do_stop (TYPE_3__*) ;
 int ngx_rtmp_play_module ;
 scalar_t__ ngx_rtmp_send_status (TYPE_3__*,char*,char*,char*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_play_pause(ngx_rtmp_session_t *s, ngx_rtmp_pause_t *v)
{
    ngx_rtmp_play_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_play_module);

    if (ctx == ((void*)0) || ctx->file.fd == NGX_INVALID_FILE) {
        goto next;
    }

    if (!ctx->opened) {
        ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "play: pause ignored");
        goto next;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: pause=%i timestamp=%f",
                   (ngx_int_t) v->pause, v->position);

    if (v->pause) {
        if (ngx_rtmp_send_status(s, "NetStream.Pause.Notify", "status",
                                 "Paused video on demand")
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        ngx_rtmp_play_do_stop(s);

    } else {
        if (ngx_rtmp_send_status(s, "NetStream.Unpause.Notify", "status",
                                 "Unpaused video on demand")
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        ngx_rtmp_play_do_start(s);
    }

next:
    return next_pause(s, v);
}
