#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct priv {double speed; int /*<<< orphan*/  in_pin; int /*<<< orphan*/  out_pool; void* cur_format; TYPE_1__* opts; int /*<<< orphan*/  pitch; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct priv* priv; } ;
struct mp_autoconvert {TYPE_2__* f; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pins; } ;
struct TYPE_3__ {int /*<<< orphan*/  scale; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_FORMAT_FLOATP ; 
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  af_rubberband_filter ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_autoconvert*,int /*<<< orphan*/ ) ; 
 struct mp_autoconvert* FUNC4 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC6 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (struct priv*,void*) ; 

__attribute__((used)) static struct mp_filter *FUNC10(struct mp_filter *parent,
                                              void *options)
{
    struct mp_filter *f = FUNC6(parent, &af_rubberband_filter);
    if (!f) {
        FUNC8(options);
        return NULL;
    }

    FUNC5(f, MP_PIN_IN, "in");
    FUNC5(f, MP_PIN_OUT, "out");

    struct priv *p = f->priv;
    p->opts = FUNC9(p, options);
    p->speed = 1.0;
    p->pitch = p->opts->scale;
    p->cur_format = FUNC9(p, FUNC1());
    p->out_pool = FUNC2(p);

    struct mp_autoconvert *conv = FUNC4(f);
    if (!conv)
        FUNC0();

    FUNC3(conv, AF_FORMAT_FLOATP);

    FUNC7(conv->f->pins[0], f->ppins[0]);
    p->in_pin = conv->f->pins[1];

    return f;
}