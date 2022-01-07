
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_11__ {TYPE_2__* track; } ;
typedef TYPE_4__ ngx_rtmp_mp4_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {scalar_t__ codec; size_t header_size; int * header; } ;
struct TYPE_8__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 scalar_t__ NGX_RTMP_VIDEO_H264 ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_rtmp_mp4_module ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_parse_avcC(ngx_rtmp_session_t *s, u_char *pos, u_char *last)
{
    ngx_rtmp_mp4_ctx_t *ctx;

    if (pos == last) {
        return NGX_OK;
    }

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_mp4_module);

    if (ctx->track == ((void*)0) || ctx->track->codec != NGX_RTMP_VIDEO_H264) {
        return NGX_OK;
    }

    ctx->track->header = pos;
    ctx->track->header_size = (size_t) (last - pos);

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "mp4: video h264 header size=%uz",
                   ctx->track->header_size);

    return NGX_OK;
}
