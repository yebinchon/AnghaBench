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
struct rte_ring {int dummy; } ;
struct Test {int consumer_done; scalar_t__ total_count; int /*<<< orphan*/  not_active; struct rte_ring* ring; } ;
typedef  scalar_t__ Element ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rte_ring*) ; 
 int FUNC1 (struct rte_ring*,void**) ; 

__attribute__((used)) static void
FUNC2(void *v)
{
    struct Test *test = (struct Test *)v;
    struct rte_ring *ring = test->ring;
    int err;

    test->total_count = 0;

    while (!test->not_active) {
        Element e;

        err = FUNC1(ring, (void**)&e);
        if (err == 0)
            test->total_count += e;
        else {
            ;
        }
    }


    /* Wait until ring is empty before exiting */
    while (!FUNC0(ring)) {
        Element e;

        err = FUNC1(ring, (void**)&e);
        if (err == 0)
            test->total_count += e;
        else {
            ;
        }
    }

    test->consumer_done = 1;
}