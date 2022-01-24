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
struct mp_pin {struct mp_pin* other; struct mp_filter* owner; } ;
struct mp_filter {int num_pins; struct mp_pin** ppins; struct mp_pin** pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_pin**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_pin*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_pin*) ; 

void FUNC4(struct mp_filter *f, struct mp_pin *p)
{
    if (!p)
        return;

    FUNC1(p->owner == f);
    FUNC2(p);
    FUNC2(p->other);

    int index = -1;
    for (int n = 0; n < f->num_pins; n++) {
        if (f->ppins[n] == p) {
            index = n;
            break;
        }
    }
    FUNC1(index >= 0);

    FUNC3(f->pins[index]);
    FUNC3(f->ppins[index]);

    int count = f->num_pins;
    FUNC0(f->pins, count, index);
    count = f->num_pins;
    FUNC0(f->ppins, count, index);
    f->num_pins -= 1;
}