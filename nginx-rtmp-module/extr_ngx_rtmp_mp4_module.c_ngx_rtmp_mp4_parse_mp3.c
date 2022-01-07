
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int NGX_RTMP_AUDIO_MP3 ;
 int ngx_rtmp_mp4_parse_audio (int *,int *,int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_parse_mp3(ngx_rtmp_session_t *s, u_char *pos, u_char *last)
{
    return ngx_rtmp_mp4_parse_audio(s, pos, last, NGX_RTMP_AUDIO_MP3);
}
