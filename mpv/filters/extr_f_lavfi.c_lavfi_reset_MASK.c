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
struct mp_filter {struct lavfi* priv; } ;
struct lavfi {int num_in_pads; TYPE_1__** in_pads; } ;
struct TYPE_2__ {int /*<<< orphan*/  pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lavfi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mp_filter *f)
{
    struct lavfi *c = f->priv;

    FUNC0(c);

    for (int n = 0; n < c->num_in_pads; n++)
        FUNC1(&c->in_pads[n]->pending);
}