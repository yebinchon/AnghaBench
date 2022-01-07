
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_pool {int dummy; } ;
struct ra_renderpass_run_params {int compute_groups; int push_constants; int num_values; int values; int pass; } ;
struct mp_pass_perf {int dummy; } ;
struct gl_shader_cache {TYPE_3__* ra; TYPE_1__* current_shader; int num_values; int values; } ;
struct TYPE_6__ {TYPE_2__* fns; } ;
struct TYPE_5__ {int (* renderpass_run ) (TYPE_3__*,struct ra_renderpass_run_params*) ;} ;
struct TYPE_4__ {int pushc; int pass; struct timer_pool* timer; } ;


 int RA_RENDERPASS_TYPE_COMPUTE ;
 int gl_sc_generate (struct gl_shader_cache*,int ,int *,int *,int ,int ) ;
 int gl_sc_reset (struct gl_shader_cache*) ;
 int stub1 (TYPE_3__*,struct ra_renderpass_run_params*) ;
 struct mp_pass_perf timer_pool_measure (struct timer_pool*) ;
 int timer_pool_start (struct timer_pool*) ;
 int timer_pool_stop (struct timer_pool*) ;

struct mp_pass_perf gl_sc_dispatch_compute(struct gl_shader_cache *sc,
                                           int w, int h, int d)
{
    struct timer_pool *timer = ((void*)0);

    gl_sc_generate(sc, RA_RENDERPASS_TYPE_COMPUTE, ((void*)0), ((void*)0), 0, 0);
    if (!sc->current_shader)
        goto error;

    timer = sc->current_shader->timer;

    struct ra_renderpass_run_params run = {
        .pass = sc->current_shader->pass,
        .values = sc->values,
        .num_values = sc->num_values,
        .push_constants = sc->current_shader->pushc,
        .compute_groups = {w, h, d},
    };

    timer_pool_start(timer);
    sc->ra->fns->renderpass_run(sc->ra, &run);
    timer_pool_stop(timer);

error:
    gl_sc_reset(sc);
    return timer_pool_measure(timer);
}
