
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_mp4_track_type_t ;
typedef int ngx_int_t ;
typedef int ngx_buf_t ;


 int NGX_OK ;
 int * ngx_rtmp_mp4_start_box (int *,char*) ;
 int ngx_rtmp_mp4_update_box_size (int *,int *) ;
 int ngx_rtmp_mp4_write_mvex (int *) ;
 int ngx_rtmp_mp4_write_mvhd (int *) ;
 int ngx_rtmp_mp4_write_trak (int *,int *,int ) ;

ngx_int_t
ngx_rtmp_mp4_write_moov(ngx_rtmp_session_t *s, ngx_buf_t *b,
    ngx_rtmp_mp4_track_type_t ttype)
{
    u_char *pos;

    pos = ngx_rtmp_mp4_start_box(b, "moov");

    ngx_rtmp_mp4_write_mvhd(b);
    ngx_rtmp_mp4_write_mvex(b);
    ngx_rtmp_mp4_write_trak(s, b, ttype);

    ngx_rtmp_mp4_update_box_size(b, pos);

    return NGX_OK;
}
