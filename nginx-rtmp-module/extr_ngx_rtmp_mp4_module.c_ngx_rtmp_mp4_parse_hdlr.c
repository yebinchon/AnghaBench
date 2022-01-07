
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct TYPE_10__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_11__ {TYPE_1__* track; } ;
typedef TYPE_4__ ngx_rtmp_mp4_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int log; } ;
struct TYPE_8__ {int csid; int type; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int NGX_RTMP_CSID_AUDIO ;
 int NGX_RTMP_CSID_VIDEO ;
 int NGX_RTMP_MSG_AUDIO ;
 int NGX_RTMP_MSG_VIDEO ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 scalar_t__ ngx_rtmp_mp4_make_tag (char,char,unsigned char,char) ;
 int ngx_rtmp_mp4_module ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_parse_hdlr(ngx_rtmp_session_t *s, u_char *pos, u_char *last)
{
    ngx_rtmp_mp4_ctx_t *ctx;
    uint32_t type;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_mp4_module);

    if (ctx->track == ((void*)0)) {
        return NGX_OK;
    }

    if (pos + 12 > last) {
        return NGX_ERROR;
    }

    type = *(uint32_t *)(pos + 8);

    if (type == ngx_rtmp_mp4_make_tag('v','i','d','e')) {
        ctx->track->type = NGX_RTMP_MSG_VIDEO;
        ctx->track->csid = NGX_RTMP_CSID_VIDEO;

        ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: video track");

    } else if (type == ngx_rtmp_mp4_make_tag('s','o','u','n')) {
        ctx->track->type = NGX_RTMP_MSG_AUDIO;
        ctx->track->csid = NGX_RTMP_CSID_AUDIO;

        ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: audio track");
    } else {
        ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: unknown track");
    }

    return NGX_OK;
}
