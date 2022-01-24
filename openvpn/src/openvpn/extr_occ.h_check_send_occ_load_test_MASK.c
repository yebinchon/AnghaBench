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
struct TYPE_2__ {scalar_t__ occ_op; int /*<<< orphan*/  timeval; int /*<<< orphan*/  occ_mtu_load_test_interval; } ;
struct context {TYPE_1__ c2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct context*) ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct context *c)
{
    if (FUNC2(&c->c2.occ_mtu_load_test_interval)
        && FUNC3(&c->c2.occ_mtu_load_test_interval,
                                 &c->c2.timeval,
                                 (!FUNC0(c) && c->c2.occ_op < 0) ? ETT_DEFAULT : 0))
    {
        FUNC1(c);
    }
}