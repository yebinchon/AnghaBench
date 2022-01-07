
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {scalar_t__ len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_exec_ctx_t ;
struct TYPE_6__ {int offset; } ;
typedef TYPE_2__ ngx_rtmp_eval_t ;


 int ngx_rtmp_exec_module ;
 int * ngx_rtmp_get_module_ctx (int *,int ) ;

__attribute__((used)) static void
ngx_rtmp_exec_eval_ctx_str(void *sctx, ngx_rtmp_eval_t *e, ngx_str_t *ret)
{
    ngx_rtmp_session_t *s = sctx;

    ngx_rtmp_exec_ctx_t *ctx;

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_exec_module);
    if (ctx == ((void*)0)) {
        ret->len = 0;
        return;
    }

    *ret = * (ngx_str_t *) ((u_char *) ctx + e->offset);
}
