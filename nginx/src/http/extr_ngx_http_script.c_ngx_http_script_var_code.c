
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int not_found; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_12__ {int index; } ;
typedef TYPE_3__ ngx_http_script_var_code_t ;
struct TYPE_13__ {TYPE_2__* sp; TYPE_9__* request; scalar_t__ ip; } ;
typedef TYPE_4__ ngx_http_script_engine_t ;
struct TYPE_14__ {TYPE_1__* connection; } ;
struct TYPE_10__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 TYPE_2__* ngx_http_get_flushed_variable (TYPE_9__*,int ) ;
 TYPE_2__ ngx_http_variable_null_value ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_2__*) ;

void
ngx_http_script_var_code(ngx_http_script_engine_t *e)
{
    ngx_http_variable_value_t *value;
    ngx_http_script_var_code_t *code;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, e->request->connection->log, 0,
                   "http script var");

    code = (ngx_http_script_var_code_t *) e->ip;

    e->ip += sizeof(ngx_http_script_var_code_t);

    value = ngx_http_get_flushed_variable(e->request, code->index);

    if (value && !value->not_found) {
        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, e->request->connection->log, 0,
                       "http script var: \"%v\"", value);

        *e->sp = *value;
        e->sp++;

        return;
    }

    *e->sp = ngx_http_variable_null_value;
    e->sp++;
}
