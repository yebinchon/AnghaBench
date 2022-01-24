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
struct ao_push_state {int paused; int /*<<< orphan*/  lock; scalar_t__ expected_end_time; } ;
struct ao {TYPE_1__* driver; struct ao_push_state* api_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* resume ) (struct ao*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*) ; 

__attribute__((used)) static void FUNC4(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;
    FUNC0(&p->lock);
    if (ao->driver->resume)
        ao->driver->resume(ao);
    p->paused = false;
    p->expected_end_time = 0;
    FUNC3(ao);
    FUNC1(&p->lock);
}