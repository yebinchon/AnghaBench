
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_4__ {int * last; } ;
typedef TYPE_1__ ngx_buf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_rtmp_mp4_field_32 (TYPE_1__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_update_box_size(ngx_buf_t *b, u_char *p)
{
    u_char *curpos;

    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    curpos = b->last;

    b->last = p;

    ngx_rtmp_mp4_field_32(b, (uint32_t) (curpos - p));

    b->last = curpos;

    return NGX_OK;
}
