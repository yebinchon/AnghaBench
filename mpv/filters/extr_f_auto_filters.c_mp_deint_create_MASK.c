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
struct mp_filter {int /*<<< orphan*/  global; struct deint_priv* priv; } ;
struct TYPE_2__ {void* out; void* in; } ;
struct deint_priv {int /*<<< orphan*/  opts; TYPE_1__ sub; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  deint_filter ; 
 int /*<<< orphan*/  filter_conf ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC1 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC2 (struct mp_filter*,int /*<<< orphan*/ *) ; 

struct mp_filter *FUNC3(struct mp_filter *parent)
{
    struct mp_filter *f = FUNC2(parent, &deint_filter);
    if (!f)
        return NULL;

    struct deint_priv *p = f->priv;

    p->sub.in = FUNC1(f, MP_PIN_IN, "in");
    p->sub.out = FUNC1(f, MP_PIN_OUT, "out");

    p->opts = FUNC0(f, f->global, &filter_conf);

    return f;
}