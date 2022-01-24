#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timer_pool {int dummy; } ;
struct ra_renderpass_run_params {int /*<<< orphan*/  compute_groups; int /*<<< orphan*/  push_constants; int /*<<< orphan*/  num_values; int /*<<< orphan*/  values; int /*<<< orphan*/  pass; } ;
struct mp_pass_perf {int dummy; } ;
struct gl_shader_cache {TYPE_3__* ra; TYPE_1__* current_shader; int /*<<< orphan*/  num_values; int /*<<< orphan*/  values; } ;
struct TYPE_6__ {TYPE_2__* fns; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* renderpass_run ) (TYPE_3__*,struct ra_renderpass_run_params*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  pushc; int /*<<< orphan*/  pass; struct timer_pool* timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  RA_RENDERPASS_TYPE_COMPUTE ; 
 int /*<<< orphan*/  FUNC0 (struct gl_shader_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_shader_cache*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct ra_renderpass_run_params*) ; 
 struct mp_pass_perf FUNC3 (struct timer_pool*) ; 
 int /*<<< orphan*/  FUNC4 (struct timer_pool*) ; 
 int /*<<< orphan*/  FUNC5 (struct timer_pool*) ; 

struct mp_pass_perf FUNC6(struct gl_shader_cache *sc,
                                           int w, int h, int d)
{
    struct timer_pool *timer = NULL;

    FUNC0(sc, RA_RENDERPASS_TYPE_COMPUTE, NULL, NULL, 0, 0);
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

    FUNC4(timer);
    sc->ra->fns->renderpass_run(sc->ra, &run);
    FUNC5(timer);

error:
    FUNC1(sc);
    return FUNC3(timer);
}