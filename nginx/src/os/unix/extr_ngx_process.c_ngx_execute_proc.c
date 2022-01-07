
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path; int name; int envp; int argv; } ;
typedef TYPE_1__ ngx_exec_ctx_t ;
struct TYPE_5__ {int log; } ;
typedef TYPE_2__ ngx_cycle_t ;


 int NGX_LOG_ALERT ;
 int execve (int ,int ,int ) ;
 int exit (int) ;
 int ngx_errno ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ) ;

__attribute__((used)) static void
ngx_execute_proc(ngx_cycle_t *cycle, void *data)
{
    ngx_exec_ctx_t *ctx = data;

    if (execve(ctx->path, ctx->argv, ctx->envp) == -1) {
        ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "execve() failed while executing %s \"%s\"",
                      ctx->name, ctx->path);
    }

    exit(1);
}
