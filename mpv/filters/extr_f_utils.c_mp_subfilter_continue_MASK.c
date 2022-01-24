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
struct mp_subfilter {int /*<<< orphan*/  frame; struct mp_pin* out; TYPE_1__* filter; } ;
struct mp_pin {int dummy; } ;
struct TYPE_2__ {struct mp_pin** pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_NO_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct mp_subfilter*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_pin*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_pin*,int /*<<< orphan*/ ) ; 

void FUNC3(struct mp_subfilter *sub)
{
    struct mp_pin *out = sub->filter ? sub->filter->pins[0] : sub->out;
    // It was made sure earlier that the pin is writable, unless the filter
    // was newly created, or a previously existing filter (which was going to
    // accept input) was destroyed. In those cases, essentially restart
    // data flow.
    if (!FUNC1(out)) {
        FUNC0(sub);
        return;
    }
    FUNC2(out, sub->frame);
    sub->frame = MP_NO_FRAME;
}