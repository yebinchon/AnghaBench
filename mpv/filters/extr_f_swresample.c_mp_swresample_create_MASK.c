#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_swresample {double speed; struct mp_filter* f; } ;
struct priv {double cmd_speed; struct mp_swresample public; void* out_pool; void* reorder_buffer; TYPE_1__* opts; int /*<<< orphan*/  log; } ;
struct mp_resample_opts {int dummy; } ;
struct mp_filter {int /*<<< orphan*/  global; int /*<<< orphan*/  log; struct priv* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  avopts; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 void* FUNC0 (struct priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC3 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resample_conf ; 
 int /*<<< orphan*/  swresample_filter ; 
 TYPE_1__* FUNC5 (struct priv*,struct mp_resample_opts*) ; 

struct mp_swresample *FUNC6(struct mp_filter *parent,
                                           struct mp_resample_opts *opts)
{
    struct mp_filter *f = FUNC3(parent, &swresample_filter);
    if (!f)
        return NULL;

    FUNC2(f, MP_PIN_IN, "in");
    FUNC2(f, MP_PIN_OUT, "out");

    struct priv *p = f->priv;
    p->public.f = f;
    p->public.speed = 1.0;
    p->cmd_speed = 1.0;
    p->log = f->log;

    if (opts) {
        p->opts = FUNC5(p, opts);
        p->opts->avopts = FUNC1(p, p->opts->avopts);
    } else {
        p->opts = FUNC4(p, f->global, &resample_conf);
    }

    p->reorder_buffer = FUNC0(p);
    p->out_pool = FUNC0(p);

    return &p->public;
}