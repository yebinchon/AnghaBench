
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int u_char ;
struct TYPE_6__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int ) ;
 int ngx_rtmp_mp4_parse_descr (TYPE_2__*,int *,int *) ;
 scalar_t__ ngx_rtmp_r16 (scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_parse_es(ngx_rtmp_session_t *s, u_char *pos, u_char *last)
{
    uint16_t id;
    uint8_t flags;

    if (pos + 3 > last) {
        return NGX_ERROR;
    }

    id = ngx_rtmp_r16(*(uint16_t *) pos);
    pos += 2;

    flags = *(uint8_t *) pos;
    ++pos;

    if (flags & 0x80) {
        pos += 2;
    }

    if (flags & 0x40) {
        return NGX_OK;
    }

    if (flags & 0x20) {
        pos += 2;
    }

    if (pos > last) {
        return NGX_ERROR;
    }

    (void) id;

    ngx_log_debug2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "mp4: es descriptor es id=%i flags=%i",
                   (ngx_int_t) id, (ngx_int_t) flags);

    return ngx_rtmp_mp4_parse_descr(s, pos, last);
}
