
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
struct TYPE_9__ {int name; int args; } ;
typedef TYPE_1__ ngx_rtmp_play_t ;
struct TYPE_10__ {int counter; int pull_exec; } ;
typedef TYPE_2__ ngx_rtmp_exec_pull_ctx_t ;
struct TYPE_11__ {TYPE_2__* pull; } ;
typedef TYPE_3__ ngx_rtmp_exec_ctx_t ;
struct TYPE_12__ {int * conf; int active; } ;
typedef TYPE_4__ ngx_rtmp_exec_app_conf_t ;
typedef int ngx_int_t ;


 scalar_t__ NGX_OK ;
 size_t NGX_RTMP_EXEC_PLAY ;
 int NGX_RTMP_EXEC_PLAYING ;
 int next_play (int *,TYPE_1__*) ;
 scalar_t__ ngx_rtmp_exec_init_ctx (int *,int ,int ,int ) ;
 scalar_t__ ngx_rtmp_exec_init_pull_ctx (int *,int ) ;
 int ngx_rtmp_exec_managed (int *,int *,char*) ;
 int ngx_rtmp_exec_module ;
 int ngx_rtmp_exec_unmanaged (int *,int *,char*) ;
 TYPE_4__* ngx_rtmp_get_module_app_conf (int *,int ) ;
 TYPE_3__* ngx_rtmp_get_module_ctx (int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_exec_play(ngx_rtmp_session_t *s, ngx_rtmp_play_t *v)
{
    ngx_rtmp_exec_ctx_t *ctx;
    ngx_rtmp_exec_pull_ctx_t *pctx;
    ngx_rtmp_exec_app_conf_t *eacf;

    eacf = ngx_rtmp_get_module_app_conf(s, ngx_rtmp_exec_module);

    if (eacf == ((void*)0) || !eacf->active) {
        goto next;
    }

    if (ngx_rtmp_exec_init_ctx(s, v->name, v->args, NGX_RTMP_EXEC_PLAYING)
        != NGX_OK)
    {
        goto next;
    }

    ngx_rtmp_exec_unmanaged(s, &eacf->conf[NGX_RTMP_EXEC_PLAY], "play");

    if (ngx_rtmp_exec_init_pull_ctx(s, v->name) != NGX_OK) {
        goto next;
    }

    ctx = ngx_rtmp_get_module_ctx(s, ngx_rtmp_exec_module);
    pctx = ctx->pull;

    if (pctx && pctx->counter == 1) {
        ngx_rtmp_exec_managed(s, &pctx->pull_exec, "pull");
    }

next:
    return next_play(s, v);
}
