#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int adapters_count; int NUM_CHANNELS; TYPE_1__* adapters; struct TYPE_6__* channels; struct TYPE_6__* name; } ;
typedef  TYPE_2__ dvb_state_t ;
struct TYPE_5__ {TYPE_2__* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void FUNC1(dvb_state_t *state)
{
    int i, j;

    for (i = 0; i < state->adapters_count; i++) {
        if (!state->adapters[i].list)
            continue;
        if (state->adapters[i].list->channels) {
            for (j = 0; j < state->adapters[i].list->NUM_CHANNELS; j++)
                FUNC0(state->adapters[i].list->channels[j].name);
            FUNC0(state->adapters[i].list->channels);
        }
        FUNC0(state->adapters[i].list);
    }
    FUNC0(state);
}