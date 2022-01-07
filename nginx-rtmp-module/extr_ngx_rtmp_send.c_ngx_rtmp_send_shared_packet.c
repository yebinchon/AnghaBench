
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_core_srv_conf_t ;
typedef int ngx_int_t ;
typedef int ngx_chain_t ;


 int NGX_ERROR ;
 int ngx_rtmp_core_module ;
 int ngx_rtmp_free_shared_chain (int *,int *) ;
 int * ngx_rtmp_get_module_srv_conf (int *,int ) ;
 int ngx_rtmp_send_message (int *,int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_send_shared_packet(ngx_rtmp_session_t *s, ngx_chain_t *cl)
{
    ngx_rtmp_core_srv_conf_t *cscf;
    ngx_int_t rc;

    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    cscf = ngx_rtmp_get_module_srv_conf(s, ngx_rtmp_core_module);

    rc = ngx_rtmp_send_message(s, cl, 0);

    ngx_rtmp_free_shared_chain(cscf, cl);

    return rc;
}
