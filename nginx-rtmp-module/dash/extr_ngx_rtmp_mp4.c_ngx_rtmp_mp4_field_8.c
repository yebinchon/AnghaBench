
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_3__ {scalar_t__ end; int last; } ;
typedef TYPE_1__ ngx_buf_t ;
typedef int bytes ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_cpymem (int ,int*,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_field_8(ngx_buf_t *b, uint8_t n)
{
    u_char bytes[1];

    bytes[0] = n & 0xFF;

    if (b->last + sizeof(bytes) > b->end) {
        return NGX_ERROR;
    }

    b->last = ngx_cpymem(b->last, bytes, sizeof(bytes));

    return NGX_OK;
}
