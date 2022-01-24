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
typedef  size_t uint32_t ;
struct nn_hash_item {int /*<<< orphan*/  list; int /*<<< orphan*/  key; } ;
struct nn_hash {size_t slots; int /*<<< orphan*/  items; int /*<<< orphan*/ * array; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2 (struct nn_hash *self, struct nn_hash_item *item)
{
    uint32_t slot;

    slot = FUNC0 (item->key) % self->slots;
    FUNC1 (&self->array [slot], &item->list);
	--self->items;
}