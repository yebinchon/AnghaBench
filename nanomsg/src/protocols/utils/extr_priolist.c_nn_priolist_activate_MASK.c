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
struct nn_priolist_slot {struct nn_priolist_data* current; int /*<<< orphan*/  pipes; } ;
struct nn_priolist_data {int priority; int /*<<< orphan*/  item; } ;
struct nn_priolist {int current; struct nn_priolist_slot* slots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3 (struct nn_priolist *self,
    struct nn_priolist_data *data)
{
    struct nn_priolist_slot *slot;

    slot = &self->slots [data->priority - 1];

    /*  If there are already some elements in this slot, current pipe is not
        going to change. */
    if (!FUNC0 (&slot->pipes)) {
        FUNC2 (&slot->pipes, &data->item, FUNC1 (&slot->pipes));
        return;
    }

    /*  Add first pipe into the slot. If there are no pipes in priolist at all
        this slot becomes current. */
    FUNC2 (&slot->pipes, &data->item, FUNC1 (&slot->pipes));
    slot->current = data;
    if (self->current == -1) {
        self->current = data->priority;
        return;
    }

    /*  If the current priority is lower than the one of the newly activated
        pipe, this slot becomes current. */
    if (self->current > data->priority) {
        self->current = data->priority;
        return;
    }

    /*  Current doesn't change otherwise. */
}