
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_18__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_19__ {scalar_t__ offset; } ;
typedef TYPE_4__ ngx_rtmp_seek_t ;
struct TYPE_17__ {scalar_t__ fd; } ;
struct TYPE_20__ {scalar_t__ post_seek; int opened; TYPE_2__ file; } ;
typedef TYPE_5__ ngx_rtmp_play_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {int log; } ;


 int NGX_ERROR ;
 scalar_t__ NGX_INVALID_FILE ;
 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int NGX_RTMP_MSID ;
 int next_seek (TYPE_3__*,TYPE_4__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 TYPE_5__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_rtmp_play_do_seek (TYPE_3__*,scalar_t__) ;
 int ngx_rtmp_play_module ;
 scalar_t__ ngx_rtmp_send_status (TYPE_3__*,char*,char*,char*) ;
 scalar_t__ ngx_rtmp_send_stream_begin (TYPE_3__*,int ) ;
 scalar_t__ ngx_rtmp_send_stream_eof (TYPE_3__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_play_seek(ngx_rtmp_session_t *s, ngx_rtmp_seek_t *v)
{
    ngx_rtmp_play_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_play_module);
    if (ctx == ((void*)0) || ctx->file.fd == NGX_INVALID_FILE) {
        goto next;
    }

    if (!ctx->opened) {
        ctx->post_seek = (ngx_uint_t) v->offset;
        ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "play: post seek=%ui", ctx->post_seek);
        goto next;
    }

    if (ngx_rtmp_send_stream_eof(s, NGX_RTMP_MSID) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_rtmp_play_do_seek(s, (ngx_uint_t) v->offset);

    if (ngx_rtmp_send_status(s, "NetStream.Seek.Notify", "status", "Seeking")
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    if (ngx_rtmp_send_stream_begin(s, NGX_RTMP_MSID) != NGX_OK) {
        return NGX_ERROR;
    }

next:
    return next_seek(s, v);
}
