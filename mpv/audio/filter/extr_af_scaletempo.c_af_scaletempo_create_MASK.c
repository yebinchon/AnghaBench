#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct priv {double speed; int /*<<< orphan*/  in_pin; int /*<<< orphan*/  out_pool; void* cur_format; void* opts; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct priv* priv; } ;
struct mp_autoconvert {TYPE_1__* f; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_FORMAT_FLOAT ; 
 int /*<<< orphan*/  AF_FORMAT_S16 ; 
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  af_scaletempo_filter ; 
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
    struct mp_filter *f = FUNC6(parent, &af_scaletempo_filter);
    if (!f) {
        FUNC8(options);
        return NULL;
    }

    FUNC5(f, MP_PIN_IN, "in");
    FUNC5(f, MP_PIN_OUT, "out");

    struct priv *s = f->priv;
    s->opts = FUNC9(s, options);
    s->speed = 1.0;
    s->cur_format = FUNC9(s, FUNC1());
    s->out_pool = FUNC2(s);

    struct mp_autoconvert *conv = FUNC4(f);
    if (!conv)
        FUNC0();

    FUNC3(conv, AF_FORMAT_S16);
    FUNC3(conv, AF_FORMAT_FLOAT);

    FUNC7(conv->f->pins[0], f->ppins[0]);
    s->in_pin = conv->f->pins[1];

    return f;
}