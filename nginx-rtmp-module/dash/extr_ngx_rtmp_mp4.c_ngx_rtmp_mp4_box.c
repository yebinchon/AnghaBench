
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_3__ {scalar_t__ last; scalar_t__ end; } ;
typedef TYPE_1__ ngx_buf_t ;


 int NGX_ERROR ;
 int NGX_OK ;
 scalar_t__ ngx_cpymem (scalar_t__,int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_box(ngx_buf_t *b, const char box[4])
{
    if (b->last + 4 > b->end) {
        return NGX_ERROR;
    }

    b->last = ngx_cpymem(b->last, (u_char *) box, 4);

    return NGX_OK;
}
