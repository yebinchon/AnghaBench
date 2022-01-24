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
struct mp_filter {int /*<<< orphan*/  log; struct lavfi* priv; } ;
struct TYPE_2__ {struct mp_filter* f; } ;
struct lavfi {int /*<<< orphan*/  tmp_frame; TYPE_1__ public; int /*<<< orphan*/  log; struct mp_filter* f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  lavfi_filter ; 
 struct mp_filter* FUNC2 (struct mp_filter*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct lavfi *FUNC3(struct mp_filter *parent)
{
    struct mp_filter *f = FUNC2(parent, &lavfi_filter);
    if (!f)
        return NULL;

    struct lavfi *c = f->priv;

    c->f = f;
    c->log = f->log;
    c->public.f = f;
    c->tmp_frame = FUNC1();
    if (!c->tmp_frame)
        FUNC0();

    return c;
}