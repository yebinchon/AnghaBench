
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_15__ {int not_found; int no_cacheable; scalar_t__ valid; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_16__ {scalar_t__ (* get_handler ) (TYPE_5__*,TYPE_3__*,int ) ;int flags; int data; int name; } ;
typedef TYPE_4__ ngx_http_variable_t ;
struct TYPE_17__ {TYPE_3__* variables; TYPE_2__* connection; } ;
typedef TYPE_5__ ngx_http_request_t ;
struct TYPE_13__ {size_t nelts; TYPE_4__* elts; } ;
struct TYPE_18__ {TYPE_1__ variables; } ;
typedef TYPE_6__ ngx_http_core_main_conf_t ;
struct TYPE_14__ {int log; } ;


 int NGX_HTTP_VAR_NOCACHEABLE ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_http_core_module ;
 TYPE_6__* ngx_http_get_module_main_conf (TYPE_5__*,int ) ;
 scalar_t__ ngx_http_variable_depth ;
 int ngx_log_error (int ,int ,int ,char*,size_t) ;
 scalar_t__ stub1 (TYPE_5__*,TYPE_3__*,int ) ;

ngx_http_variable_value_t *
ngx_http_get_indexed_variable(ngx_http_request_t *r, ngx_uint_t index)
{
    ngx_http_variable_t *v;
    ngx_http_core_main_conf_t *cmcf;

    cmcf = ngx_http_get_module_main_conf(r, ngx_http_core_module);

    if (cmcf->variables.nelts <= index) {
        ngx_log_error(NGX_LOG_ALERT, r->connection->log, 0,
                      "unknown variable index: %ui", index);
        return ((void*)0);
    }

    if (r->variables[index].not_found || r->variables[index].valid) {
        return &r->variables[index];
    }

    v = cmcf->variables.elts;

    if (ngx_http_variable_depth == 0) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "cycle while evaluating variable \"%V\"",
                      &v[index].name);
        return ((void*)0);
    }

    ngx_http_variable_depth--;

    if (v[index].get_handler(r, &r->variables[index], v[index].data)
        == NGX_OK)
    {
        ngx_http_variable_depth++;

        if (v[index].flags & NGX_HTTP_VAR_NOCACHEABLE) {
            r->variables[index].no_cacheable = 1;
        }

        return &r->variables[index];
    }

    ngx_http_variable_depth++;

    r->variables[index].valid = 0;
    r->variables[index].not_found = 1;

    return ((void*)0);
}
