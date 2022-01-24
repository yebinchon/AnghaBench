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
struct TYPE_4__ {int /*<<< orphan*/  pid_persist; } ;
struct TYPE_3__ {int /*<<< orphan*/  timeval; int /*<<< orphan*/  packet_id_persist_interval; } ;
struct context {TYPE_2__ c1; TYPE_1__ c2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETT_DEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct context *c)
{
    if (FUNC1(&c->c1.pid_persist)
        && FUNC0(&c->c2.packet_id_persist_interval, &c->c2.timeval, ETT_DEFAULT))
    {
        FUNC2(&c->c1.pid_persist);
    }
}