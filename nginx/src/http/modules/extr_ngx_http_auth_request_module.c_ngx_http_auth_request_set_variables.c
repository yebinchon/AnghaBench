
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct TYPE_25__ {int len; int data; } ;
typedef TYPE_4__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_26__ {int valid; int len; int data; scalar_t__ not_found; } ;
typedef TYPE_5__ ngx_http_variable_value_t ;
struct TYPE_27__ {int data; } ;
typedef TYPE_6__ ngx_http_variable_t ;
struct TYPE_28__ {TYPE_5__* variables; TYPE_1__* connection; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_23__ {TYPE_6__* elts; } ;
struct TYPE_29__ {TYPE_2__ variables; } ;
typedef TYPE_8__ ngx_http_core_main_conf_t ;
struct TYPE_30__ {size_t index; int (* set_handler ) (TYPE_7__*,TYPE_5__*,int ) ;int value; } ;
typedef TYPE_9__ ngx_http_auth_request_variable_t ;
struct TYPE_20__ {int subrequest; } ;
typedef TYPE_10__ ngx_http_auth_request_ctx_t ;
struct TYPE_21__ {TYPE_3__* vars; } ;
typedef TYPE_11__ ngx_http_auth_request_conf_t ;
struct TYPE_24__ {int nelts; TYPE_9__* elts; } ;
struct TYPE_22__ {int log; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_complex_value (int ,int *,TYPE_4__*) ;
 int ngx_http_core_module ;
 TYPE_8__* ngx_http_get_module_main_conf (TYPE_7__*,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int stub1 (TYPE_7__*,TYPE_5__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_auth_request_set_variables(ngx_http_request_t *r,
    ngx_http_auth_request_conf_t *arcf, ngx_http_auth_request_ctx_t *ctx)
{
    ngx_str_t val;
    ngx_http_variable_t *v;
    ngx_http_variable_value_t *vv;
    ngx_http_auth_request_variable_t *av, *last;
    ngx_http_core_main_conf_t *cmcf;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "auth request set variables");

    if (arcf->vars == ((void*)0)) {
        return NGX_OK;
    }

    cmcf = ngx_http_get_module_main_conf(r, ngx_http_core_module);
    v = cmcf->variables.elts;

    av = arcf->vars->elts;
    last = av + arcf->vars->nelts;

    while (av < last) {





        vv = &r->variables[av->index];

        if (ngx_http_complex_value(ctx->subrequest, &av->value, &val)
            != NGX_OK)
        {
            return NGX_ERROR;
        }

        vv->valid = 1;
        vv->not_found = 0;
        vv->data = val.data;
        vv->len = val.len;

        if (av->set_handler) {





            av->set_handler(r, vv, v[av->index].data);
        }

        av++;
    }

    return NGX_OK;
}
