
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int * last; } ;
typedef TYPE_1__ ngx_buf_t ;


 scalar_t__ NGX_OK ;
 scalar_t__ ngx_rtmp_mp4_box (TYPE_1__*,char const*) ;
 scalar_t__ ngx_rtmp_mp4_field_32 (TYPE_1__*,int ) ;

__attribute__((used)) static u_char *
ngx_rtmp_mp4_start_box(ngx_buf_t *b, const char box[4])
{
    u_char *p;

    p = b->last;

    if (ngx_rtmp_mp4_field_32(b, 0) != NGX_OK) {
        return ((void*)0);
    }

    if (ngx_rtmp_mp4_box(b, box) != NGX_OK) {
        return ((void*)0);
    }

    return p;
}
