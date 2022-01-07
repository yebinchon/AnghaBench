
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_int_t ;
typedef int ngx_buf_t ;


 int NGX_OK ;
 int ngx_rtmp_mp4_field_32 (int *,int) ;
 int * ngx_rtmp_mp4_start_box (int *,char*) ;
 int ngx_rtmp_mp4_update_box_size (int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_write_tfhd(ngx_buf_t *b)
{
    u_char *pos;

    pos = ngx_rtmp_mp4_start_box(b, "tfhd");


    ngx_rtmp_mp4_field_32(b, 0x00020000);


    ngx_rtmp_mp4_field_32(b, 1);

    ngx_rtmp_mp4_update_box_size(b, pos);

    return NGX_OK;
}
