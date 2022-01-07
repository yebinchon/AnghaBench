
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_char ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_12__ {TYPE_2__* track; } ;
typedef TYPE_4__ ngx_rtmp_mp4_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int codec; } ;
struct TYPE_9__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int NGX_RTMP_AUDIO_AAC ;
 int NGX_RTMP_AUDIO_MP3 ;
 int NGX_RTMP_VIDEO_H264 ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_rtmp_mp4_module ;
 int ngx_rtmp_mp4_parse_descr (TYPE_3__*,int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_parse_dc(ngx_rtmp_session_t *s, u_char *pos, u_char *last)
{
    uint8_t id;
    ngx_rtmp_mp4_ctx_t *ctx;
    ngx_int_t *pc;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_mp4_module);

    if (ctx->track == ((void*)0)) {
        return NGX_OK;
    }

    if (pos + 13 > last) {
        return NGX_ERROR;
    }

    id = * (uint8_t *) pos;
    pos += 13;
    pc = &ctx->track->codec;

    switch (id) {
        case 0x21:
            *pc = NGX_RTMP_VIDEO_H264;
            break;

        case 0x40:
        case 0x66:
        case 0x67:
        case 0x68:
            *pc = NGX_RTMP_AUDIO_AAC;
            break;

        case 0x69:
        case 0x6b:
            *pc = NGX_RTMP_AUDIO_MP3;
            break;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "mp4: decoder descriptor id=%i codec=%i",
                   (ngx_int_t) id, *pc);

    return ngx_rtmp_mp4_parse_descr(s, pos, last);
}
