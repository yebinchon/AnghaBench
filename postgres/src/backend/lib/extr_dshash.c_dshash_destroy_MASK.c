#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  next; } ;
typedef  TYPE_2__ dshash_table_item ;
struct TYPE_10__ {size_t size_log2; TYPE_1__* control; int /*<<< orphan*/  area; int /*<<< orphan*/ * buckets; } ;
typedef  TYPE_3__ dshash_table ;
typedef  int /*<<< orphan*/  dsa_pointer ;
struct TYPE_8__ {scalar_t__ magic; int /*<<< orphan*/  handle; int /*<<< orphan*/  buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DSHASH_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

void
FUNC6(dshash_table *hash_table)
{
	size_t		size;
	size_t		i;

	FUNC0(hash_table->control->magic == DSHASH_MAGIC);
	FUNC4(hash_table);

	/* Free all the entries. */
	size = ((size_t) 1) << hash_table->size_log2;
	for (i = 0; i < size; ++i)
	{
		dsa_pointer item_pointer = hash_table->buckets[i];

		while (FUNC1(item_pointer))
		{
			dshash_table_item *item;
			dsa_pointer next_item_pointer;

			item = FUNC3(hash_table->area, item_pointer);
			next_item_pointer = item->next;
			FUNC2(hash_table->area, item_pointer);
			item_pointer = next_item_pointer;
		}
	}

	/*
	 * Vandalize the control block to help catch programming errors where
	 * other backends access the memory formerly occupied by this hash table.
	 */
	hash_table->control->magic = 0;

	/* Free the active table and control object. */
	FUNC2(hash_table->area, hash_table->control->buckets);
	FUNC2(hash_table->area, hash_table->control->handle);

	FUNC5(hash_table);
}