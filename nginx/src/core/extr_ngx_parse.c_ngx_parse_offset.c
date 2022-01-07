
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int off_t ;
struct TYPE_3__ {size_t len; int* data; } ;
typedef TYPE_1__ ngx_str_t ;


 int NGX_ERROR ;
 int NGX_MAX_OFF_T_VALUE ;
 int ngx_atoof (int*,size_t) ;

off_t
ngx_parse_offset(ngx_str_t *line)
{
    u_char unit;
    off_t offset, scale, max;
    size_t len;

    len = line->len;

    if (len == 0) {
        return NGX_ERROR;
    }

    unit = line->data[len - 1];

    switch (unit) {
    case 'K':
    case 'k':
        len--;
        max = NGX_MAX_OFF_T_VALUE / 1024;
        scale = 1024;
        break;

    case 'M':
    case 'm':
        len--;
        max = NGX_MAX_OFF_T_VALUE / (1024 * 1024);
        scale = 1024 * 1024;
        break;

    case 'G':
    case 'g':
        len--;
        max = NGX_MAX_OFF_T_VALUE / (1024 * 1024 * 1024);
        scale = 1024 * 1024 * 1024;
        break;

    default:
        max = NGX_MAX_OFF_T_VALUE;
        scale = 1;
    }

    offset = ngx_atoof(line->data, len);
    if (offset == NGX_ERROR || offset > max) {
        return NGX_ERROR;
    }

    offset *= scale;

    return offset;
}
