#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_4__ {size_t count; TYPE_1__* threads; } ;
struct lwan {TYPE_2__ thread; } ;
typedef  int /*<<< orphan*/  set ;
typedef  int /*<<< orphan*/  cpu_set_t ;
struct TYPE_3__ {int /*<<< orphan*/  self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct lwan *l, uint32_t *schedtbl, uint32_t mask)
{
    for (uint32_t i = 0; i < l->thread.count; i++) {
        cpu_set_t set;

        FUNC1(&set);
        FUNC0(schedtbl[i & mask], &set);

        if (FUNC3(l->thread.threads[i].self, sizeof(set),
                                   &set))
            FUNC2("Could not set affinity for thread %d", i);
    }
}