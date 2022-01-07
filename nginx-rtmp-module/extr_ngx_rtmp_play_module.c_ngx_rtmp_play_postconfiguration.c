
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_OK ;
 int next_close_stream ;
 int next_pause ;
 int next_play ;
 int next_seek ;
 int ngx_rtmp_close_stream ;
 int ngx_rtmp_pause ;
 int ngx_rtmp_play ;
 int ngx_rtmp_play_close_stream ;
 int ngx_rtmp_play_pause ;
 int ngx_rtmp_play_play ;
 int ngx_rtmp_play_seek ;
 int ngx_rtmp_seek ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_play_postconfiguration(ngx_conf_t *cf)
{
    next_play = ngx_rtmp_play;
    ngx_rtmp_play = ngx_rtmp_play_play;

    next_close_stream = ngx_rtmp_close_stream;
    ngx_rtmp_close_stream = ngx_rtmp_play_close_stream;

    next_seek = ngx_rtmp_seek;
    ngx_rtmp_seek = ngx_rtmp_play_seek;

    next_pause = ngx_rtmp_pause;
    ngx_rtmp_pause = ngx_rtmp_play_pause;

    return NGX_OK;
}
