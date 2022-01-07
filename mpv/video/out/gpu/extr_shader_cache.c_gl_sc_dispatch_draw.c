
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timer_pool {int dummy; } ;
struct TYPE_7__ {int h; int w; int format; } ;
struct ra_tex {TYPE_2__ params; } ;
struct mp_rect {int member_3; int member_2; int member_1; int member_0; } ;
struct ra_renderpass_run_params {void* vertex_data; size_t vertex_count; struct mp_rect scissors; struct mp_rect viewport; struct ra_tex* target; int push_constants; int num_values; int values; int pass; } ;
struct ra_renderpass_input {int dummy; } ;
struct mp_pass_perf {int dummy; } ;
struct TYPE_6__ {int invalidate_target; } ;
struct gl_shader_cache {TYPE_5__* ra; TYPE_3__* current_shader; int num_values; int values; TYPE_1__ params; } ;
struct TYPE_10__ {TYPE_4__* fns; } ;
struct TYPE_9__ {int (* renderpass_run ) (TYPE_5__*,struct ra_renderpass_run_params*) ;} ;
struct TYPE_8__ {int pushc; int pass; struct timer_pool* timer; } ;


 int RA_RENDERPASS_TYPE_RASTER ;
 int gl_sc_generate (struct gl_shader_cache*,int ,int ,struct ra_renderpass_input const*,int,size_t) ;
 int gl_sc_reset (struct gl_shader_cache*) ;
 int stub1 (TYPE_5__*,struct ra_renderpass_run_params*) ;
 struct mp_pass_perf timer_pool_measure (struct timer_pool*) ;
 int timer_pool_start (struct timer_pool*) ;
 int timer_pool_stop (struct timer_pool*) ;

struct mp_pass_perf gl_sc_dispatch_draw(struct gl_shader_cache *sc,
                                        struct ra_tex *target, bool discard,
                                        const struct ra_renderpass_input *vao,
                                        int vao_len, size_t vertex_stride,
                                        void *vertices, size_t num_vertices)
{
    struct timer_pool *timer = ((void*)0);

    sc->params.invalidate_target = discard;
    gl_sc_generate(sc, RA_RENDERPASS_TYPE_RASTER, target->params.format,
                   vao, vao_len, vertex_stride);
    if (!sc->current_shader)
        goto error;

    timer = sc->current_shader->timer;

    struct mp_rect full_rc = {0, 0, target->params.w, target->params.h};

    struct ra_renderpass_run_params run = {
        .pass = sc->current_shader->pass,
        .values = sc->values,
        .num_values = sc->num_values,
        .push_constants = sc->current_shader->pushc,
        .target = target,
        .vertex_data = vertices,
        .vertex_count = num_vertices,
        .viewport = full_rc,
        .scissors = full_rc,
    };

    timer_pool_start(timer);
    sc->ra->fns->renderpass_run(sc->ra, &run);
    timer_pool_stop(timer);

error:
    gl_sc_reset(sc);
    return timer_pool_measure(timer);
}
