
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_17__ {TYPE_2__* connection; int posted_dry_events; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_18__ {int file; TYPE_1__* fmt; } ;
typedef TYPE_4__ ngx_rtmp_play_ctx_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_19__ {TYPE_3__* data; } ;
typedef TYPE_5__ ngx_event_t ;
struct TYPE_16__ {int log; } ;
struct TYPE_15__ {scalar_t__ (* send ) (TYPE_3__*,int *,scalar_t__*) ;} ;


 scalar_t__ NGX_AGAIN ;
 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int NGX_RTMP_MSID ;
 int ngx_add_timer (TYPE_5__*,scalar_t__) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_post_event (TYPE_5__*,int *) ;
 int ngx_posted_events ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_rtmp_play_module ;
 int ngx_rtmp_send_play_status (TYPE_3__*,char*,char*,scalar_t__,int ) ;
 int ngx_rtmp_send_status (TYPE_3__*,char*,char*,char*) ;
 int ngx_rtmp_send_stream_eof (TYPE_3__*,int ) ;
 scalar_t__ stub1 (TYPE_3__*,int *,scalar_t__*) ;

__attribute__((used)) static void
ngx_rtmp_play_send(ngx_event_t *e)
{
    ngx_rtmp_session_t *s = e->data;
    ngx_rtmp_play_ctx_t *ctx;
    ngx_int_t rc;
    ngx_uint_t ts;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_play_module);

    if (ctx == ((void*)0) || ctx->fmt == ((void*)0) || ctx->fmt->send == ((void*)0)) {
        return;
    }

    ts = 0;

    rc = ctx->fmt->send(s, &ctx->file, &ts);

    if (rc > 0) {
        ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "play: send schedule %i", rc);

        ngx_add_timer(e, rc);
        return;
    }

    if (rc == NGX_AGAIN) {
        ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "play: send buffer full");

        ngx_post_event(e, &s->posted_dry_events);
        return;
    }

    if (rc == NGX_OK) {
        ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "play: send restart");

        ngx_post_event(e, &ngx_posted_events);
        return;
    }


    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: send done");

    ngx_rtmp_send_stream_eof(s, NGX_RTMP_MSID);

    ngx_rtmp_send_play_status(s, "NetStream.Play.Complete", "status", ts, 0);

    ngx_rtmp_send_status(s, "NetStream.Play.Stop", "status", "Stopped");
}
