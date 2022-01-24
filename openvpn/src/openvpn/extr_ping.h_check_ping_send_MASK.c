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
struct TYPE_4__ {int /*<<< orphan*/  timeval; int /*<<< orphan*/  ping_send_interval; } ;
struct TYPE_3__ {scalar_t__ ping_send_timeout; } ;
struct context {TYPE_2__ c2; TYPE_1__ options; } ;

/* Variables and functions */
 int ETT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct context*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void
FUNC2(struct context *c)
{
    void FUNC3(struct context *c);

    if (c->options.ping_send_timeout
        && FUNC1(&c->c2.ping_send_interval,
                                 &c->c2.timeval,
                                 !FUNC0(c) ? ETT_DEFAULT : 1))
    {
        FUNC3(c);
    }
}