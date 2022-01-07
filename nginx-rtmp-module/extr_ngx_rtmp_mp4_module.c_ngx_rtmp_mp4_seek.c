
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_15__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_13__ {int timestamp; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_1__ cursor; } ;
typedef TYPE_4__ ngx_rtmp_mp4_track_t ;
struct TYPE_17__ {size_t ntracks; size_t start_timestamp; int epoch; TYPE_4__* tracks; } ;
typedef TYPE_5__ ngx_rtmp_mp4_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_file_t ;
struct TYPE_14__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 scalar_t__ NGX_RTMP_MSG_VIDEO ;
 int ngx_current_msec ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 TYPE_5__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_rtmp_mp4_module ;
 int ngx_rtmp_mp4_reset (TYPE_3__*) ;
 int ngx_rtmp_mp4_seek_track (TYPE_3__*,TYPE_4__*,size_t) ;
 size_t ngx_rtmp_mp4_to_rtmp_timestamp (TYPE_4__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_seek(ngx_rtmp_session_t *s, ngx_file_t *f, ngx_uint_t timestamp)
{
    ngx_rtmp_mp4_ctx_t *ctx;
    ngx_rtmp_mp4_track_t *t;
    ngx_uint_t n;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_mp4_module);

    if (ctx == ((void*)0)) {
        return NGX_OK;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "mp4: seek timestamp=%ui", timestamp);

    for (n = 0; n < ctx->ntracks; ++n) {
        t = &ctx->tracks[n];

        if (t->type != NGX_RTMP_MSG_VIDEO) {
            continue;
        }

        ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: track#%ui seek video", n);

        ngx_rtmp_mp4_seek_track(s, t, timestamp);

        timestamp = ngx_rtmp_mp4_to_rtmp_timestamp(t, t->cursor.timestamp);

        break;
    }

    for (n = 0; n < ctx->ntracks; ++n) {
        t = &ctx->tracks[n];

        if (t->type == NGX_RTMP_MSG_VIDEO) {
            continue;
        }

        ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: track#%ui seek", n);

        ngx_rtmp_mp4_seek_track(s, &ctx->tracks[n], timestamp);
    }

    ctx->start_timestamp = timestamp;
    ctx->epoch = ngx_current_msec;

    return ngx_rtmp_mp4_reset(s);
}
