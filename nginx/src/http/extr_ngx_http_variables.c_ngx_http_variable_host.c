
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_14__ {int valid; scalar_t__ not_found; scalar_t__ no_cacheable; int data; scalar_t__ len; } ;
typedef TYPE_4__ ngx_http_variable_value_t ;
struct TYPE_13__ {int data; scalar_t__ len; } ;
struct TYPE_12__ {TYPE_3__ server; } ;
struct TYPE_15__ {TYPE_2__ headers_in; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_11__ {int data; scalar_t__ len; } ;
struct TYPE_16__ {TYPE_1__ server_name; } ;
typedef TYPE_6__ ngx_http_core_srv_conf_t ;


 int NGX_OK ;
 int ngx_http_core_module ;
 TYPE_6__* ngx_http_get_module_srv_conf (TYPE_5__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_host(ngx_http_request_t *r, ngx_http_variable_value_t *v,
    uintptr_t data)
{
    ngx_http_core_srv_conf_t *cscf;

    if (r->headers_in.server.len) {
        v->len = r->headers_in.server.len;
        v->data = r->headers_in.server.data;

    } else {
        cscf = ngx_http_get_module_srv_conf(r, ngx_http_core_module);

        v->len = cscf->server_name.len;
        v->data = cscf->server_name.data;
    }

    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    return NGX_OK;
}
