
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef int ngx_str_t ;
typedef int ngx_log_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_4__ {scalar_t__* pos; } ;
typedef TYPE_1__ ngx_buf_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_rtmp_make_digest (int *,TYPE_1__*,scalar_t__*,scalar_t__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_write_digest(ngx_buf_t *b, ngx_str_t *key, size_t base,
        ngx_log_t *log)
{
    size_t n, offs;
    u_char *p;

    offs = 0;
    for (n = 8; n < 12; ++n) {
        offs += b->pos[base + n];
    }
    offs = (offs % 728) + base + 12;
    p = b->pos + offs;

    if (ngx_rtmp_make_digest(key, b, p, p, log) != NGX_OK) {
        return NGX_ERROR;
    }

    return NGX_OK;
}
