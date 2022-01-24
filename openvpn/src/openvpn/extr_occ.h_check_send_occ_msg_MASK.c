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
struct TYPE_2__ {scalar_t__ occ_op; int /*<<< orphan*/  timeval; } ;
struct context {TYPE_1__ c2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct context*) ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct context *c)
{
    if (c->c2.occ_op >= 0)
    {
        if (!FUNC0(c))
        {
            FUNC1(c);
        }
        else
        {
            FUNC2(&c->c2.timeval); /* ZERO-TIMEOUT */
        }
    }
}