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
struct ao {int /*<<< orphan*/  events_; TYPE_1__* api; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct ao*) ;} ;

/* Variables and functions */
 scalar_t__ AO_EVENT_UNDERRUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*) ; 

void FUNC2(struct ao *ao)
{
    if (ao->api->reset)
        ao->api->reset(ao);
    FUNC0(&ao->events_, ~(unsigned int)AO_EVENT_UNDERRUN);
}