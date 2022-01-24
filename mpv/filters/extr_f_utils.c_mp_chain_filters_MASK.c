#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mp_pin {int dummy; } ;
struct mp_filter {int num_pins; struct mp_pin** pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_pin*,struct mp_pin*) ; 

void FUNC2(struct mp_pin *in, struct mp_pin *out,
                      struct mp_filter **filters, int num_filters)
{
    for (int n = 0; n < num_filters; n++) {
        if (!filters[n])
            continue;
        FUNC0(filters[n]->num_pins == 2);
        FUNC1(filters[n]->pins[0], in);
        in = filters[n]->pins[1];
    }
    FUNC1(out, in);
}