
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_char ;
struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_10__ {void* duration; void* time_scale; } ;
typedef TYPE_3__ ngx_rtmp_mp4_track_t ;
struct TYPE_11__ {TYPE_3__* track; } ;
typedef TYPE_4__ ngx_rtmp_mp4_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int ngx_log_debug2 (int ,int ,int ,char*,void*,void*) ;
 TYPE_4__* ngx_rtmp_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_rtmp_mp4_module ;
 void* ngx_rtmp_r32 (int ) ;
 void* ngx_rtmp_r64 (int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_parse_mdhd(ngx_rtmp_session_t *s, u_char *pos, u_char *last)
{
    ngx_rtmp_mp4_ctx_t *ctx;
    ngx_rtmp_mp4_track_t *t;
    uint8_t version;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_mp4_module);

    if (ctx->track == ((void*)0)) {
        return NGX_OK;
    }

    t = ctx->track;

    if (pos + 1 > last) {
        return NGX_ERROR;
    }

    version = *(uint8_t *) pos;

    switch (version) {
        case 0:
            if (pos + 20 > last) {
                return NGX_ERROR;
            }

            pos += 12;
            t->time_scale = ngx_rtmp_r32(*(uint32_t *) pos);
            pos += 4;
            t->duration = ngx_rtmp_r32(*(uint32_t *) pos);
            break;

        case 1:
            if (pos + 28 > last) {
                return NGX_ERROR;
            }

            pos += 20;
            t->time_scale = ngx_rtmp_r32(*(uint32_t *) pos);
            pos += 4;
            t->duration = ngx_rtmp_r64(*(uint64_t *) pos);
            break;

        default:
            return NGX_ERROR;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "mp4: duration time_scale=%ui duration=%uL",
                   t->time_scale, t->duration);

    return NGX_OK;
}
