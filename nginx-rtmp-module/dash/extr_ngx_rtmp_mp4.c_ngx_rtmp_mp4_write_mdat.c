
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_uint_t ;
typedef int ngx_buf_t ;


 int NGX_OK ;
 int ngx_rtmp_mp4_box (int *,char*) ;
 int ngx_rtmp_mp4_field_32 (int *,int ) ;

ngx_uint_t
ngx_rtmp_mp4_write_mdat(ngx_buf_t *b, ngx_uint_t size)
{
    ngx_rtmp_mp4_field_32(b, size);

    ngx_rtmp_mp4_box(b, "mdat");

    return NGX_OK;
}
