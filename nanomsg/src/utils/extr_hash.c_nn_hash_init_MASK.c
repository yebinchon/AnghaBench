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
typedef  int uint32_t ;
struct nn_list {int dummy; } ;
struct nn_hash {int slots; int /*<<< orphan*/ * array; scalar_t__ items; } ;

/* Variables and functions */
 int NN_HASH_INITIAL_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3 (struct nn_hash *self)
{
    uint32_t i;

    self->slots = NN_HASH_INITIAL_SLOTS;
    self->items = 0;
    self->array = FUNC1 (sizeof (struct nn_list) * NN_HASH_INITIAL_SLOTS,
        "hash map");
    FUNC0 (self->array);
    for (i = 0; i != NN_HASH_INITIAL_SLOTS; ++i)
        FUNC2 (&self->array [i]);
}