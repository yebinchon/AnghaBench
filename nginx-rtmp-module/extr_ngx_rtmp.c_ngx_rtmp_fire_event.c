
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_header_t ;
typedef scalar_t__ (* ngx_rtmp_handler_pt ) (int *,int *,int *) ;
struct TYPE_4__ {TYPE_2__* events; } ;
typedef TYPE_1__ ngx_rtmp_core_main_conf_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_chain_t ;
struct TYPE_5__ {scalar_t__ (* elts ) (int *,int *,int *) ;size_t nelts; } ;
typedef TYPE_2__ ngx_array_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_rtmp_core_module ;
 TYPE_1__* ngx_rtmp_get_module_main_conf (int *,int ) ;
 scalar_t__ stub1 (int *,int *,int *) ;

ngx_int_t
ngx_rtmp_fire_event(ngx_rtmp_session_t *s, ngx_uint_t evt,
        ngx_rtmp_header_t *h, ngx_chain_t *in)
{
    ngx_rtmp_core_main_conf_t *cmcf;
    ngx_array_t *ch;
    ngx_rtmp_handler_pt *hh;
    size_t n;

    cmcf = ngx_rtmp_get_module_main_conf(s, ngx_rtmp_core_module);

    ch = &cmcf->events[evt];
    hh = ch->elts;
    for(n = 0; n < ch->nelts; ++n, ++hh) {
        if (*hh && (*hh)(s, h, in) != NGX_OK) {
            return NGX_ERROR;
        }
    }
    return NGX_OK;
}
