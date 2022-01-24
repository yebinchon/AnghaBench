#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ao {int /*<<< orphan*/  events_; } ;

/* Variables and functions */
 int AO_EVENT_UNDERRUN ; 
 int /*<<< orphan*/  FUNC0 (struct ao*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ao *ao)
{
    // Racy check, but it's just for the message.
    if (!(FUNC2(&ao->events_) & AO_EVENT_UNDERRUN))
        FUNC0(ao, "Device underrun detected.\n");
    FUNC1(ao, AO_EVENT_UNDERRUN);
}