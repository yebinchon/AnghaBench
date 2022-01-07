
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef int ngx_str_t ;
typedef int ngx_log_t ;
typedef size_t ngx_int_t ;
struct TYPE_4__ {scalar_t__* pos; } ;
typedef TYPE_1__ ngx_buf_t ;


 size_t NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int NGX_RTMP_HANDSHAKE_KEYLEN ;
 scalar_t__ ngx_memcmp (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ ngx_rtmp_make_digest (int *,TYPE_1__*,scalar_t__*,scalar_t__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_find_digest(ngx_buf_t *b, ngx_str_t *key, size_t base, ngx_log_t *log)
{
    size_t n, offs;
    u_char digest[NGX_RTMP_HANDSHAKE_KEYLEN];
    u_char *p;

    offs = 0;
    for (n = 0; n < 4; ++n) {
        offs += b->pos[base + n];
    }
    offs = (offs % 728) + base + 4;
    p = b->pos + offs;

    if (ngx_rtmp_make_digest(key, b, p, digest, log) != NGX_OK) {
        return NGX_ERROR;
    }

    if (ngx_memcmp(digest, p, NGX_RTMP_HANDSHAKE_KEYLEN) == 0) {
        return offs;
    }

    return NGX_ERROR;
}
