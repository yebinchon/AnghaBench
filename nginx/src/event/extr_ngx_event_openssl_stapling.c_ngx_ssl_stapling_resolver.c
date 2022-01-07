
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_ssl_t ;
typedef int ngx_resolver_t ;
typedef int ngx_msec_t ;
typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_OK ;

ngx_int_t
ngx_ssl_stapling_resolver(ngx_conf_t *cf, ngx_ssl_t *ssl,
    ngx_resolver_t *resolver, ngx_msec_t resolver_timeout)
{
    return NGX_OK;
}
