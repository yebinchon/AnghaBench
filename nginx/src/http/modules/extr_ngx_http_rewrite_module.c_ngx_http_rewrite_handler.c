
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_variable_value_t ;
struct TYPE_20__ {int quote; scalar_t__ status; scalar_t__ ip; int log; TYPE_7__* request; int * sp; } ;
typedef TYPE_4__ ngx_http_script_engine_t ;
typedef int (* ngx_http_script_code_pt ) (TYPE_4__*) ;
struct TYPE_21__ {int stack_size; int log; TYPE_3__* codes; } ;
typedef TYPE_6__ ngx_http_rewrite_loc_conf_t ;
struct TYPE_22__ {scalar_t__ phase_handler; scalar_t__ loc_conf; int pool; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_23__ {TYPE_2__* ctx; } ;
typedef TYPE_8__ ngx_http_core_srv_conf_t ;
struct TYPE_17__ {scalar_t__ location_rewrite_index; } ;
struct TYPE_24__ {TYPE_1__ phase_engine; } ;
typedef TYPE_9__ ngx_http_core_main_conf_t ;
struct TYPE_19__ {scalar_t__ elts; } ;
struct TYPE_18__ {scalar_t__ loc_conf; } ;


 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int ngx_http_core_module ;
 TYPE_6__* ngx_http_get_module_loc_conf (TYPE_7__*,int ) ;
 TYPE_9__* ngx_http_get_module_main_conf (TYPE_7__*,int ) ;
 TYPE_8__* ngx_http_get_module_srv_conf (TYPE_7__*,int ) ;
 int ngx_http_rewrite_module ;
 void* ngx_pcalloc (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_rewrite_handler(ngx_http_request_t *r)
{
    ngx_int_t index;
    ngx_http_script_code_pt code;
    ngx_http_script_engine_t *e;
    ngx_http_core_srv_conf_t *cscf;
    ngx_http_core_main_conf_t *cmcf;
    ngx_http_rewrite_loc_conf_t *rlcf;

    cmcf = ngx_http_get_module_main_conf(r, ngx_http_core_module);
    cscf = ngx_http_get_module_srv_conf(r, ngx_http_core_module);
    index = cmcf->phase_engine.location_rewrite_index;

    if (r->phase_handler == index && r->loc_conf == cscf->ctx->loc_conf) {

        return NGX_DECLINED;
    }

    rlcf = ngx_http_get_module_loc_conf(r, ngx_http_rewrite_module);

    if (rlcf->codes == ((void*)0)) {
        return NGX_DECLINED;
    }

    e = ngx_pcalloc(r->pool, sizeof(ngx_http_script_engine_t));
    if (e == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    e->sp = ngx_pcalloc(r->pool,
                        rlcf->stack_size * sizeof(ngx_http_variable_value_t));
    if (e->sp == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    e->ip = rlcf->codes->elts;
    e->request = r;
    e->quote = 1;
    e->log = rlcf->log;
    e->status = NGX_DECLINED;

    while (*(uintptr_t *) e->ip) {
        code = *(ngx_http_script_code_pt *) e->ip;
        code(e);
    }

    return e->status;
}
