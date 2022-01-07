
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_header_t ;
typedef int ngx_rtmp_core_srv_conf_t ;
typedef int ngx_rtmp_amf_elt_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_chain_t ;
struct TYPE_7__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 scalar_t__ ngx_rtmp_append_amf (TYPE_2__*,int **,int *,int *,size_t) ;
 int ngx_rtmp_core_module ;
 int ngx_rtmp_free_shared_chain (int *,int *) ;
 int * ngx_rtmp_get_module_srv_conf (TYPE_2__*,int ) ;
 int ngx_rtmp_prepare_message (TYPE_2__*,int *,int *,int *) ;

ngx_chain_t *
ngx_rtmp_create_amf(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
                    ngx_rtmp_amf_elt_t *elts, size_t nelts)
{
    ngx_chain_t *first;
    ngx_int_t rc;
    ngx_rtmp_core_srv_conf_t *cscf;

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "create: amf nelts=%ui", nelts);

    cscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_core_module);

    first = ((void*)0);

    rc = ngx_rtmp_append_amf(s, &first, ((void*)0), elts, nelts);

    if (rc != NGX_OK && first) {
        ngx_rtmp_free_shared_chain(cscf, first);
        first = ((void*)0);
    }

    if (first) {
        ngx_rtmp_prepare_message(s, h, ((void*)0), first);
    }

    return first;
}
