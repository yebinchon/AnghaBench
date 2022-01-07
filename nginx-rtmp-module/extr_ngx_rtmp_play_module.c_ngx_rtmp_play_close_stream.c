
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_15__ {scalar_t__ fd; } ;
struct TYPE_18__ {scalar_t__ file_id; TYPE_1__ file; } ;
typedef TYPE_4__ ngx_rtmp_play_ctx_t ;
typedef int ngx_rtmp_close_stream_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {int log; } ;


 scalar_t__ NGX_INVALID_FILE ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_RTMP_MSID ;
 int next_close_stream (TYPE_3__*,int *) ;
 int ngx_close_file (scalar_t__) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_rtmp_play_cleanup_local_file (TYPE_3__*) ;
 int ngx_rtmp_play_do_done (TYPE_3__*) ;
 int ngx_rtmp_play_do_stop (TYPE_3__*) ;
 int ngx_rtmp_play_leave (TYPE_3__*) ;
 int ngx_rtmp_play_module ;
 int ngx_rtmp_send_status (TYPE_3__*,char*,char*,char*) ;
 int ngx_rtmp_send_stream_eof (TYPE_3__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_play_close_stream(ngx_rtmp_session_t *s, ngx_rtmp_close_stream_t *v)
{
    ngx_rtmp_play_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_play_module);
    if (ctx == ((void*)0)) {
        goto next;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "play: close_stream");

    ngx_rtmp_play_do_stop(s);

    ngx_rtmp_play_do_done(s);

    if (ctx->file.fd != NGX_INVALID_FILE) {
        ngx_close_file(ctx->file.fd);
        ctx->file.fd = NGX_INVALID_FILE;

        ngx_rtmp_send_stream_eof(s, NGX_RTMP_MSID);

        ngx_rtmp_send_status(s, "NetStream.Play.Stop", "status",
                             "Stop video on demand");
    }

    if (ctx->file_id) {
        ngx_rtmp_play_cleanup_local_file(s);
    }

    ngx_rtmp_play_leave(s);

next:
    return next_close_stream(s, v);
}
