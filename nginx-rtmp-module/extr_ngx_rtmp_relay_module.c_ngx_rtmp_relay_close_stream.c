
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
struct TYPE_3__ {int session_relay; } ;
typedef TYPE_1__ ngx_rtmp_relay_app_conf_t ;
typedef int ngx_rtmp_close_stream_t ;
typedef int ngx_int_t ;


 int next_close_stream (int *,int *) ;
 TYPE_1__* ngx_rtmp_get_module_app_conf (int *,int ) ;
 int ngx_rtmp_relay_close (int *) ;
 int ngx_rtmp_relay_module ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_relay_close_stream(ngx_rtmp_session_t *s, ngx_rtmp_close_stream_t *v)
{
    ngx_rtmp_relay_app_conf_t *racf;

    racf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_relay_module);
    if (racf && !racf->session_relay) {
        ngx_rtmp_relay_close(s);
    }

    return next_close_stream(s, v);
}
