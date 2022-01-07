
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ ngx_uint_t ;
struct TYPE_11__ {int handler; int log; TYPE_3__* data; } ;
struct TYPE_14__ {TYPE_10__ respawn_evt; int log; } ;
typedef TYPE_3__ ngx_rtmp_exec_t ;
struct TYPE_13__ {scalar_t__ nelts; TYPE_3__* elts; } ;
struct TYPE_15__ {TYPE_2__ static_exec; } ;
typedef TYPE_4__ ngx_rtmp_exec_main_conf_t ;
struct TYPE_16__ {TYPE_7__* ctx; } ;
typedef TYPE_5__ ngx_rtmp_core_srv_conf_t ;
struct TYPE_12__ {scalar_t__ nelts; TYPE_5__** elts; } ;
struct TYPE_17__ {TYPE_1__ servers; } ;
typedef TYPE_6__ ngx_rtmp_core_main_conf_t ;
struct TYPE_18__ {TYPE_4__** main_conf; } ;
typedef TYPE_7__ ngx_rtmp_conf_ctx_t ;
typedef int ngx_int_t ;
typedef int ngx_cycle_t ;
struct TYPE_19__ {size_t ctx_index; } ;


 int NGX_OK ;
 int ngx_post_event (TYPE_10__*,int *) ;
 scalar_t__ ngx_process_slot ;
 TYPE_6__* ngx_rtmp_core_main_conf ;
 TYPE_8__ ngx_rtmp_exec_module ;
 int ngx_rtmp_exec_respawn ;
 int ngx_rtmp_init_queue ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_exec_init_process(ngx_cycle_t *cycle)
{

    ngx_rtmp_core_main_conf_t *cmcf = ngx_rtmp_core_main_conf;
    ngx_rtmp_core_srv_conf_t **cscf;
    ngx_rtmp_conf_ctx_t *cctx;
    ngx_rtmp_exec_main_conf_t *emcf;
    ngx_rtmp_exec_t *e;
    ngx_uint_t n;

    if (cmcf == ((void*)0) || cmcf->servers.nelts == 0) {
        return NGX_OK;
    }


    if (ngx_process_slot) {
        return NGX_OK;
    }

    cscf = cmcf->servers.elts;
    cctx = (*cscf)->ctx;
    emcf = cctx->main_conf[ngx_rtmp_exec_module.ctx_index];
    e = emcf->static_exec.elts;
    for (n = 0; n < emcf->static_exec.nelts; ++n, ++e) {
        e->respawn_evt.data = e;
        e->respawn_evt.log = e->log;
        e->respawn_evt.handler = ngx_rtmp_exec_respawn;
        ngx_post_event((&e->respawn_evt), &ngx_rtmp_init_queue);
    }


    return NGX_OK;
}
