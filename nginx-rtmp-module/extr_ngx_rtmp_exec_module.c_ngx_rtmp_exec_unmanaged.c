
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_12__ {int log; TYPE_2__* eval_ctx; int eval; int * conf; } ;
typedef TYPE_3__ ngx_rtmp_exec_t ;
typedef int ngx_rtmp_exec_conf_t ;
struct TYPE_13__ {scalar_t__ nelts; int * elts; } ;
typedef TYPE_4__ ngx_array_t ;
struct TYPE_10__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug2 (int ,int ,int ,char*,char const*,scalar_t__) ;
 int ngx_memzero (TYPE_3__*,int) ;
 int ngx_rtmp_exec_event_eval ;
 scalar_t__ ngx_rtmp_exec_filter (TYPE_2__*,int *) ;
 int ngx_rtmp_exec_run (TYPE_3__*) ;

__attribute__((used)) static void
ngx_rtmp_exec_unmanaged(ngx_rtmp_session_t *s, ngx_array_t *e, const char *op)
{
    ngx_uint_t n;
    ngx_rtmp_exec_t en;
    ngx_rtmp_exec_conf_t *ec;

    if (e->nelts == 0) {
        return;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "exec: %s %uz unmanaged command(s)", op, e->nelts);

    ec = e->elts;
    for (n = 0; n < e->nelts; n++, ec++) {
        if (ngx_rtmp_exec_filter(s, ec) != NGX_OK) {
            continue;
        }

        ngx_memzero(&en, sizeof(ngx_rtmp_exec_t));

        en.conf = ec;
        en.eval = ngx_rtmp_exec_event_eval;
        en.eval_ctx = s;
        en.log = s->connection->log;

        ngx_rtmp_exec_run(&en);
    }
}
