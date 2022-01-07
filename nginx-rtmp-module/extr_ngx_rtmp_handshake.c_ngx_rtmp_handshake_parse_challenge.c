
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef char u_char ;
typedef int ngx_str_t ;
struct TYPE_8__ {int hs_old; TYPE_1__* connection; int hs_digest; scalar_t__ peer_epoch; TYPE_3__* hs_buf; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_9__ {char* pos; char* last; } ;
typedef TYPE_3__ ngx_buf_t ;
struct TYPE_7__ {int log; int pool; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_RTMP_HANDSHAKE_KEYLEN ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_debug5 (int ,int ,int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;
 int ngx_palloc (int ,int) ;
 scalar_t__ ngx_rtmp_find_digest (TYPE_3__*,int *,int,int ) ;
 scalar_t__ ngx_rtmp_make_digest (int *,TYPE_3__*,int *,int ,int ) ;
 int ngx_rtmp_rmemcpy (scalar_t__*,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_handshake_parse_challenge(ngx_rtmp_session_t *s,
        ngx_str_t *peer_key, ngx_str_t *key)
{
    ngx_buf_t *b;
    u_char *p;
    ngx_int_t offs;

    b = s->hs_buf;
    if (*b->pos != '\x03') {
        ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                "handshake: unexpected RTMP version: %i",
                (ngx_int_t)*b->pos);
        return NGX_ERROR;
    }
    ++b->pos;
    s->peer_epoch = 0;
    ngx_rtmp_rmemcpy(&s->peer_epoch, b->pos, 4);

    p = b->pos + 4;
    ngx_log_debug5(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "handshake: peer version=%i.%i.%i.%i epoch=%uD",
            (ngx_int_t)p[3], (ngx_int_t)p[2],
            (ngx_int_t)p[1], (ngx_int_t)p[0],
            (uint32_t)s->peer_epoch);
    if (*(uint32_t *)p == 0) {
        s->hs_old = 1;
        return NGX_OK;
    }

    offs = ngx_rtmp_find_digest(b, peer_key, 772, s->connection->log);
    if (offs == NGX_ERROR) {
        offs = ngx_rtmp_find_digest(b, peer_key, 8, s->connection->log);
    }
    if (offs == NGX_ERROR) {
        ngx_log_error(NGX_LOG_INFO, s->connection->log, 0,
                "handshake: digest not found");
        s->hs_old = 1;
        return NGX_OK;
    }
    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
            "handshake: digest found at pos=%i", offs);
    b->pos += offs;
    b->last = b->pos + NGX_RTMP_HANDSHAKE_KEYLEN;
    s->hs_digest = ngx_palloc(s->connection->pool, NGX_RTMP_HANDSHAKE_KEYLEN);
    if (ngx_rtmp_make_digest(key, b, ((void*)0), s->hs_digest, s->connection->log)
            != NGX_OK)
    {
        return NGX_ERROR;
    }
    return NGX_OK;
}
