
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ next; scalar_t__ loc_conf; } ;
typedef TYPE_3__ ngx_http_script_if_code_t ;
struct TYPE_10__ {scalar_t__ ip; TYPE_5__* request; TYPE_1__* sp; } ;
typedef TYPE_4__ ngx_http_script_engine_t ;
struct TYPE_11__ {TYPE_2__* connection; scalar_t__ loc_conf; } ;
struct TYPE_8__ {int log; } ;
struct TYPE_7__ {int len; int * data; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_update_location_config (TYPE_5__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

void
ngx_http_script_if_code(ngx_http_script_engine_t *e)
{
    ngx_http_script_if_code_t *code;

    code = (ngx_http_script_if_code_t *) e->ip;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, e->request->connection->log, 0,
                   "http script if");

    e->sp--;

    if (e->sp->len && (e->sp->len != 1 || e->sp->data[0] != '0')) {
        if (code->loc_conf) {
            e->request->loc_conf = code->loc_conf;
            ngx_http_update_location_config(e->request);
        }

        e->ip += sizeof(ngx_http_script_if_code_t);
        return;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, e->request->connection->log, 0,
                   "http script if: false");

    e->ip += code->next;
}
