
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int is_args; int ip; int pos; int args; TYPE_2__* request; } ;
typedef TYPE_3__ ngx_http_script_engine_t ;
struct TYPE_6__ {TYPE_1__* connection; } ;
struct TYPE_5__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

void
ngx_http_script_start_args_code(ngx_http_script_engine_t *e)
{
    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, e->request->connection->log, 0,
                   "http script args");

    e->is_args = 1;
    e->args = e->pos;
    e->ip += sizeof(uintptr_t);
}
