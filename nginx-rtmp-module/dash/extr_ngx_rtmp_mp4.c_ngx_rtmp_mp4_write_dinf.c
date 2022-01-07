
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_int_t ;
typedef int ngx_buf_t ;


 int NGX_OK ;
 int * ngx_rtmp_mp4_start_box (int *,char*) ;
 int ngx_rtmp_mp4_update_box_size (int *,int *) ;
 int ngx_rtmp_mp4_write_dref (int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_write_dinf(ngx_buf_t *b)
{
    u_char *pos;

    pos = ngx_rtmp_mp4_start_box(b, "dinf");

    ngx_rtmp_mp4_write_dref(b);

    ngx_rtmp_mp4_update_box_size(b, pos);

    return NGX_OK;
}
