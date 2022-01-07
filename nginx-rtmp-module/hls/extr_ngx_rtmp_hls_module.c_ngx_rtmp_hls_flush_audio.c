
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_14__ {int pid; int sid; int cc; int pts; int dts; } ;
typedef TYPE_3__ ngx_rtmp_mpegts_frame_t ;
struct TYPE_15__ {int audio_cc; int file; int aframe_pts; TYPE_5__* aframe; int opened; } ;
typedef TYPE_4__ ngx_rtmp_hls_ctx_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_16__ {scalar_t__ pos; scalar_t__ last; scalar_t__ start; } ;
typedef TYPE_5__ ngx_buf_t ;
typedef int frame ;
struct TYPE_12__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memzero (TYPE_3__*,int) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_hls_module ;
 scalar_t__ ngx_rtmp_mpegts_write_frame (int *,TYPE_3__*,TYPE_5__*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_hls_flush_audio(ngx_rtmp_session_t *s)
{
    ngx_rtmp_hls_ctx_t *ctx;
    ngx_rtmp_mpegts_frame_t frame;
    ngx_int_t rc;
    ngx_buf_t *b;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_hls_module);

    if (ctx == ((void*)0) || !ctx->opened) {
        return NGX_OK;
    }

    b = ctx->aframe;

    if (b == ((void*)0) || b->pos == b->last) {
        return NGX_OK;
    }

    ngx_memzero(&frame, sizeof(frame));

    frame.dts = ctx->aframe_pts;
    frame.pts = frame.dts;
    frame.cc = ctx->audio_cc;
    frame.pid = 0x101;
    frame.sid = 0xc0;

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "hls: flush audio pts=%uL", frame.pts);

    rc = ngx_rtmp_mpegts_write_frame(&ctx->file, &frame, b);

    if (rc != NGX_OK) {
        ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                      "hls: audio flush failed");
    }

    ctx->audio_cc = frame.cc;
    b->pos = b->last = b->start;

    return rc;
}
