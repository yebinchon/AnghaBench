
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_OK ;
 int next_close_stream ;
 int next_connect ;
 int next_disconnect ;
 int next_play ;
 int next_publish ;
 int next_record_done ;
 int ngx_rtmp_close_stream ;
 int ngx_rtmp_connect ;
 int ngx_rtmp_disconnect ;
 int ngx_rtmp_notify_close_stream ;
 int ngx_rtmp_notify_connect ;
 int ngx_rtmp_notify_disconnect ;
 int ngx_rtmp_notify_play ;
 int ngx_rtmp_notify_publish ;
 int ngx_rtmp_notify_record_done ;
 int ngx_rtmp_play ;
 int ngx_rtmp_publish ;
 int ngx_rtmp_record_done ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_notify_postconfiguration(ngx_conf_t *cf)
{
    next_connect = ngx_rtmp_connect;
    ngx_rtmp_connect = ngx_rtmp_notify_connect;

    next_disconnect = ngx_rtmp_disconnect;
    ngx_rtmp_disconnect = ngx_rtmp_notify_disconnect;

    next_publish = ngx_rtmp_publish;
    ngx_rtmp_publish = ngx_rtmp_notify_publish;

    next_play = ngx_rtmp_play;
    ngx_rtmp_play = ngx_rtmp_notify_play;

    next_close_stream = ngx_rtmp_close_stream;
    ngx_rtmp_close_stream = ngx_rtmp_notify_close_stream;

    next_record_done = ngx_rtmp_record_done;
    ngx_rtmp_record_done = ngx_rtmp_notify_record_done;

    return NGX_OK;
}
