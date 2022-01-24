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
struct ao_push_state {int paused; int still_playing; int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer; } ;
struct ao {TYPE_1__* driver; struct ao_push_state* api_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct ao*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*) ; 
 int /*<<< orphan*/  FUNC4 (struct ao*) ; 

__attribute__((used)) static void FUNC5(struct ao *ao)
{
    struct ao_push_state *p = ao->api_priv;
    FUNC1(&p->lock);
    if (ao->driver->reset)
        ao->driver->reset(ao);
    FUNC0(p->buffer);
    p->paused = false;
    if (p->still_playing)
        FUNC4(ao);
    p->still_playing = false;
    FUNC2(&p->lock);
}