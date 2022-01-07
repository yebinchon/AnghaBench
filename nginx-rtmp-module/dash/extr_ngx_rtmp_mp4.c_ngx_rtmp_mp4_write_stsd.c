
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_rtmp_session_t ;
typedef scalar_t__ ngx_rtmp_mp4_track_type_t ;
typedef int ngx_int_t ;
typedef int ngx_buf_t ;


 int NGX_OK ;
 scalar_t__ NGX_RTMP_MP4_VIDEO_TRACK ;
 int ngx_rtmp_mp4_field_32 (int *,int) ;
 int * ngx_rtmp_mp4_start_box (int *,char*) ;
 int ngx_rtmp_mp4_update_box_size (int *,int *) ;
 int ngx_rtmp_mp4_write_audio (int *,int *) ;
 int ngx_rtmp_mp4_write_video (int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_write_stsd(ngx_rtmp_session_t *s, ngx_buf_t *b,
    ngx_rtmp_mp4_track_type_t ttype)
{
    u_char *pos;

    pos = ngx_rtmp_mp4_start_box(b, "stsd");


    ngx_rtmp_mp4_field_32(b, 0);


    ngx_rtmp_mp4_field_32(b, 1);

    if (ttype == NGX_RTMP_MP4_VIDEO_TRACK) {
        ngx_rtmp_mp4_write_video(s, b);
    } else {
        ngx_rtmp_mp4_write_audio(s, b);
    }

    ngx_rtmp_mp4_update_box_size(b, pos);

    return NGX_OK;
}
