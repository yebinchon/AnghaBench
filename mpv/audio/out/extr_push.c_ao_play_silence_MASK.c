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
struct ao_push_state {scalar_t__ silence; } ;
struct ao {TYPE_1__* driver; struct ao_push_state* api_priv; int /*<<< orphan*/ * api; } ;
struct TYPE_2__ {int (* play ) (struct ao*,void**,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ao_api_push ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,int) ; 
 int FUNC2 (struct ao*,void**,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct ao *ao, int samples)
{
    FUNC0(ao->api == &ao_api_push);

    struct ao_push_state *p = ao->api_priv;

    if (!FUNC1(ao, samples) || !ao->driver->play)
        return 0;

    return ao->driver->play(ao, (void **)p->silence, samples, 0);
}