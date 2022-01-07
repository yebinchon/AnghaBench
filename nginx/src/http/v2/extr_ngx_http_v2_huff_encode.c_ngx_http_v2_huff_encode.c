
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_char ;
typedef int ngx_uint_t ;
struct TYPE_4__ {int code; scalar_t__ len; } ;
typedef TYPE_1__ ngx_http_v2_huff_encode_code_t ;
typedef int buf ;


 int ngx_align (int,int) ;
 int ngx_http_v2_huff_encode_buf (scalar_t__*,int) ;
 TYPE_1__* ngx_http_v2_huff_encode_table ;
 TYPE_1__* ngx_http_v2_huff_encode_table_lc ;

size_t
ngx_http_v2_huff_encode(u_char *src, size_t len, u_char *dst, ngx_uint_t lower)
{
    u_char *end;
    size_t hlen;
    ngx_uint_t buf, pending, code;
    ngx_http_v2_huff_encode_code_t *table, *next;

    table = lower ? ngx_http_v2_huff_encode_table_lc
                  : ngx_http_v2_huff_encode_table;
    hlen = 0;
    buf = 0;
    pending = 0;

    end = src + len;

    while (src != end) {
        next = &table[*src++];

        code = next->code;
        pending += next->len;


        if (pending < sizeof(buf) * 8) {
            buf |= code << (sizeof(buf) * 8 - pending);
            continue;
        }

        if (hlen + sizeof(buf) >= len) {
            return 0;
        }

        pending -= sizeof(buf) * 8;

        buf |= code >> pending;

        ngx_http_v2_huff_encode_buf(&dst[hlen], buf);

        hlen += sizeof(buf);

        buf = pending ? code << (sizeof(buf) * 8 - pending) : 0;
    }

    if (pending == 0) {
        return hlen;
    }

    buf |= (ngx_uint_t) -1 >> pending;

    pending = ngx_align(pending, 8);

    if (hlen + pending / 8 >= len) {
        return 0;
    }

    buf >>= sizeof(buf) * 8 - pending;

    do {
        pending -= 8;
        dst[hlen++] = (u_char) (buf >> pending);
    } while (pending);

    return hlen;
}
