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
struct mp_sws_filter {int /*<<< orphan*/  pool; TYPE_1__* sws; struct mp_filter* f; } ;
struct mp_filter {int /*<<< orphan*/  global; int /*<<< orphan*/  log; struct mp_sws_filter* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_PIN_IN ; 
 int /*<<< orphan*/  MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,int /*<<< orphan*/ ,char*) ; 
 struct mp_filter* FUNC1 (struct mp_filter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_sws_filter*) ; 
 TYPE_1__* FUNC3 (struct mp_sws_filter*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sws_filter ; 

struct mp_sws_filter *FUNC5(struct mp_filter *parent)
{
    struct mp_filter *f = FUNC1(parent, &sws_filter);
    if (!f)
        return NULL;

    FUNC0(f, MP_PIN_IN, "in");
    FUNC0(f, MP_PIN_OUT, "out");

    struct mp_sws_filter *s = f->priv;
    s->f = f;
    s->sws = FUNC3(s);
    s->sws->log = f->log;
    FUNC4(s->sws, f->global);
    s->pool = FUNC2(s);

    return s;
}