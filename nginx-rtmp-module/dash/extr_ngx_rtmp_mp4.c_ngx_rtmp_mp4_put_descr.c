
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int ngx_int_t ;
typedef int ngx_buf_t ;


 int NGX_OK ;
 int ngx_rtmp_mp4_field_8 (int *,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_put_descr(ngx_buf_t *b, int tag, size_t size)
{
    ngx_rtmp_mp4_field_8(b, (uint8_t) tag);
    ngx_rtmp_mp4_field_8(b, size & 0x7F);

    return NGX_OK;
}
