
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_buf_t ;


 int NGX_OK ;
 int ngx_rtmp_mp4_box (int *,char*) ;
 int ngx_rtmp_mp4_field_32 (int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_write_vmhd(ngx_buf_t *b)
{

    ngx_rtmp_mp4_field_32(b, 20);

    ngx_rtmp_mp4_box(b, "vmhd");


    ngx_rtmp_mp4_field_32(b, 0x01);


    ngx_rtmp_mp4_field_32(b, 0);
    ngx_rtmp_mp4_field_32(b, 0);

    return NGX_OK;
}
