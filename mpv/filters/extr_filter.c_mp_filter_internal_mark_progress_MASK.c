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
struct mp_filter {TYPE_1__* in; } ;
struct filter_runner {int /*<<< orphan*/  filtering; } ;
struct TYPE_2__ {struct filter_runner* runner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct mp_filter *f)
{
    struct filter_runner *r = f->in->runner;
    FUNC1(r->filtering); // only call from f's process()
    FUNC0(f);
}