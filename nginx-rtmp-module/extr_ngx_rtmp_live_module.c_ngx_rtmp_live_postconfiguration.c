
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
 int next_pause ;
 int next_play ;
 int next_publish ;
 int next_stream_begin ;
 int next_stream_eof ;
 int * ngx_array_push (int *) ;
 int ngx_rtmp_close_stream ;
 TYPE_1__* ngx_rtmp_conf_get_module_main_conf (int *,int ) ;
 int ngx_rtmp_core_module ;
 int ngx_rtmp_live_av ;
 int ngx_rtmp_live_close_stream ;
 int ngx_rtmp_live_pause ;
 int ngx_rtmp_live_play ;
 int ngx_rtmp_live_publish ;
 int ngx_rtmp_live_stream_begin ;
 int ngx_rtmp_live_stream_eof ;
 int ngx_rtmp_pause ;
 int ngx_rtmp_play ;
 int ngx_rtmp_publish ;
 int ngx_rtmp_stream_begin ;
 int ngx_rtmp_stream_eof ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_live_postconfiguration(ngx_conf_t *cf)
{
    ngx_rtmp_core_main_conf_t *cmcf;
    ngx_rtmp_handler_pt *h;

    cmcf = ngx_rtmp_conf_get_module_main_conf(cf, ngx_rtmp_core_module);



    h = ngx_array_push(&cmcf->events[NGX_RTMP_MSG_AUDIO]);
    *h = ngx_rtmp_live_av;

    h = ngx_array_push(&cmcf->events[NGX_RTMP_MSG_VIDEO]);
    *h = ngx_rtmp_live_av;



    next_publish = ngx_rtmp_publish;
    ngx_rtmp_publish = ngx_rtmp_live_publish;

    next_play = ngx_rtmp_play;
    ngx_rtmp_play = ngx_rtmp_live_play;

    next_close_stream = ngx_rtmp_close_stream;
    ngx_rtmp_close_stream = ngx_rtmp_live_close_stream;

    next_pause = ngx_rtmp_pause;
    ngx_rtmp_pause = ngx_rtmp_live_pause;

    next_stream_begin = ngx_rtmp_stream_begin;
    ngx_rtmp_stream_begin = ngx_rtmp_live_stream_begin;

    next_stream_eof = ngx_rtmp_stream_eof;
    ngx_rtmp_stream_eof = ngx_rtmp_live_stream_eof;

    return NGX_OK;
}
