
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_rtmp_handler_pt ;
struct TYPE_3__ {int * events; } ;
typedef TYPE_1__ ngx_rtmp_core_main_conf_t ;
typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_OK ;
 size_t NGX_RTMP_MSG_AUDIO ;
 size_t NGX_RTMP_MSG_VIDEO ;
 int next_close_stream ;
 int next_publish ;
 int next_stream_begin ;
 int next_stream_eof ;
 int * ngx_array_push (int *) ;
 int ngx_rtmp_close_stream ;
 TYPE_1__* ngx_rtmp_conf_get_module_main_conf (int *,int ) ;
 int ngx_rtmp_core_module ;
 int ngx_rtmp_dash_audio ;
 int ngx_rtmp_dash_close_stream ;
 int ngx_rtmp_dash_publish ;
 int ngx_rtmp_dash_stream_begin ;
 int ngx_rtmp_dash_stream_eof ;
 int ngx_rtmp_dash_video ;
 int ngx_rtmp_publish ;
 int ngx_rtmp_stream_begin ;
 int ngx_rtmp_stream_eof ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_dash_postconfiguration(ngx_conf_t *cf)
{
    ngx_rtmp_handler_pt *h;
    ngx_rtmp_core_main_conf_t *cmcf;

    cmcf = ngx_rtmp_conf_get_module_main_conf(cf, ngx_rtmp_core_module);

    h = ngx_array_push(&cmcf->events[NGX_RTMP_MSG_VIDEO]);
    *h = ngx_rtmp_dash_video;

    h = ngx_array_push(&cmcf->events[NGX_RTMP_MSG_AUDIO]);
    *h = ngx_rtmp_dash_audio;

    next_publish = ngx_rtmp_publish;
    ngx_rtmp_publish = ngx_rtmp_dash_publish;

    next_close_stream = ngx_rtmp_close_stream;
    ngx_rtmp_close_stream = ngx_rtmp_dash_close_stream;

    next_stream_begin = ngx_rtmp_stream_begin;
    ngx_rtmp_stream_begin = ngx_rtmp_dash_stream_begin;

    next_stream_eof = ngx_rtmp_stream_eof;
    ngx_rtmp_stream_eof = ngx_rtmp_dash_stream_eof;

    return NGX_OK;
}
