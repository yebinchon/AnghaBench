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
struct TYPE_4__ {int tv_sec; } ;
struct TYPE_3__ {scalar_t__ update_timeout_random_component; int /*<<< orphan*/  timeout_random_component; TYPE_2__ timeval; } ;
struct context {TYPE_1__ c2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct context*) ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(struct context *c)
{
    if (now >= c->c2.update_timeout_random_component)
    {
        FUNC0(c);
    }
    if (c->c2.timeval.tv_sec >= 1)
    {
        FUNC1(&c->c2.timeval, &c->c2.timeout_random_component);
    }
}