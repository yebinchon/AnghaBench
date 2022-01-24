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
struct priv {int /*<<< orphan*/  in_pin; TYPE_3__* opts; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct priv* priv; } ;
struct mp_autoconvert {TYPE_2__* f; } ;
struct TYPE_4__ {scalar_t__ num_chmaps; int /*<<< orphan*/ * chmaps; } ;
struct TYPE_6__ {TYPE_1__ in_channels; scalar_t__ in_srate; scalar_t__ in_format; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  af_format_filter ; 
 int /*<<< orphan*/  FUNC1 (struct mp_autoconvert*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_autoconvert*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_autoconvert*,scalar_t__) ; 
 struct mp_autoconvert* FUNC4 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC6 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 TYPE_3__* FUNC9 (struct priv*,void*) ; 

__attribute__((used)) static struct mp_filter *FUNC10(struct mp_filter *parent,
                                              void *options)
{
    struct mp_filter *f = FUNC6(parent, &af_format_filter);
    if (!f) {
        FUNC8(options);
        return NULL;
    }

    struct priv *p = f->priv;
    p->opts = FUNC9(p, options);

    FUNC5(f, MP_PIN_IN, "in");
    FUNC5(f, MP_PIN_OUT, "out");

    struct mp_autoconvert *conv = FUNC4(f);
    if (!conv)
        FUNC0();

    if (p->opts->in_format)
        FUNC1(conv, p->opts->in_format);
    if (p->opts->in_srate)
        FUNC3(conv, p->opts->in_srate);
    if (p->opts->in_channels.num_chmaps > 0)
        FUNC2(conv, &p->opts->in_channels.chmaps[0]);

    FUNC7(conv->f->pins[0], f->ppins[0]);
    p->in_pin = conv->f->pins[1];

    return f;
}