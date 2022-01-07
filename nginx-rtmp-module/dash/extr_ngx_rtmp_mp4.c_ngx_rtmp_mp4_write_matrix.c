
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ngx_int_t ;
typedef int ngx_buf_t ;


 int NGX_OK ;
 int ngx_rtmp_mp4_field_32 (int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_write_matrix(ngx_buf_t *buf, uint32_t a, uint32_t b, uint32_t c,
    uint32_t d, uint32_t tx, uint32_t ty)
{
    ngx_rtmp_mp4_field_32(buf, a << 16);
    ngx_rtmp_mp4_field_32(buf, b << 16);
    ngx_rtmp_mp4_field_32(buf, 0);
    ngx_rtmp_mp4_field_32(buf, c << 16);
    ngx_rtmp_mp4_field_32(buf, d << 16);
    ngx_rtmp_mp4_field_32(buf, 0);
    ngx_rtmp_mp4_field_32(buf, tx << 16);
    ngx_rtmp_mp4_field_32(buf, ty << 16);
    ngx_rtmp_mp4_field_32(buf, 1 << 30);

    return NGX_OK;
}
