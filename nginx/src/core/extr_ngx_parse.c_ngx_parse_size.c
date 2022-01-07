
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int ssize_t ;
struct TYPE_3__ {size_t len; int* data; } ;
typedef TYPE_1__ ngx_str_t ;


 int NGX_ERROR ;
 int NGX_MAX_SIZE_T_VALUE ;
 int ngx_atosz (int*,size_t) ;

ssize_t
ngx_parse_size(ngx_str_t *line)
{
    u_char unit;
    size_t len;
    ssize_t size, scale, max;

    len = line->len;

    if (len == 0) {
        return NGX_ERROR;
    }

    unit = line->data[len - 1];

    switch (unit) {
    case 'K':
    case 'k':
        len--;
        max = NGX_MAX_SIZE_T_VALUE / 1024;
        scale = 1024;
        break;

    case 'M':
    case 'm':
        len--;
        max = NGX_MAX_SIZE_T_VALUE / (1024 * 1024);
        scale = 1024 * 1024;
        break;

    default:
        max = NGX_MAX_SIZE_T_VALUE;
        scale = 1;
    }

    size = ngx_atosz(line->data, len);
    if (size == NGX_ERROR || size > max) {
        return NGX_ERROR;
    }

    size *= scale;

    return size;
}
