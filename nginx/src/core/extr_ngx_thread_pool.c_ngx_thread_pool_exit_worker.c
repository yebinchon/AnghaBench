
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_thread_pool_t ;
struct TYPE_5__ {size_t nelts; int ** elts; } ;
struct TYPE_6__ {TYPE_1__ pools; } ;
typedef TYPE_2__ ngx_thread_pool_conf_t ;
struct TYPE_7__ {int conf_ctx; } ;
typedef TYPE_3__ ngx_cycle_t ;


 scalar_t__ NGX_PROCESS_SINGLE ;
 scalar_t__ NGX_PROCESS_WORKER ;
 scalar_t__ ngx_get_conf (int ,int ) ;
 scalar_t__ ngx_process ;
 int ngx_thread_pool_destroy (int *) ;
 int ngx_thread_pool_module ;

__attribute__((used)) static void
ngx_thread_pool_exit_worker(ngx_cycle_t *cycle)
{
    ngx_uint_t i;
    ngx_thread_pool_t **tpp;
    ngx_thread_pool_conf_t *tcf;

    if (ngx_process != NGX_PROCESS_WORKER
        && ngx_process != NGX_PROCESS_SINGLE)
    {
        return;
    }

    tcf = (ngx_thread_pool_conf_t *) ngx_get_conf(cycle->conf_ctx,
                                                  ngx_thread_pool_module);

    if (tcf == ((void*)0)) {
        return;
    }

    tpp = tcf->pools.elts;

    for (i = 0; i < tcf->pools.nelts; i++) {
        ngx_thread_pool_destroy(tpp[i]);
    }
}
