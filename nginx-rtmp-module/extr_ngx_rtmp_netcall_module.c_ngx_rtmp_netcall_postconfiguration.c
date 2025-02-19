
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
 size_t NGX_RTMP_DISCONNECT ;
 int * ngx_array_push (int *) ;
 TYPE_1__* ngx_rtmp_conf_get_module_main_conf (int *,int ) ;
 int ngx_rtmp_core_module ;
 int ngx_rtmp_netcall_disconnect ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_netcall_postconfiguration(ngx_conf_t *cf)
{
    ngx_rtmp_core_main_conf_t *cmcf;
    ngx_rtmp_handler_pt *h;

    cmcf = ngx_rtmp_conf_get_module_main_conf(cf, ngx_rtmp_core_module);

    h = ngx_array_push(&cmcf->events[NGX_RTMP_DISCONNECT]);
    *h = ngx_rtmp_netcall_disconnect;

    return NGX_OK;
}
