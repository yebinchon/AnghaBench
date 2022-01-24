#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  next; } ;
typedef  TYPE_2__ dshash_table_item ;
struct TYPE_11__ {size_t size_log2; int /*<<< orphan*/  area; int /*<<< orphan*/ * buckets; TYPE_1__* control; int /*<<< orphan*/  find_locked; } ;
typedef  TYPE_3__ dshash_table ;
struct TYPE_12__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_4__ dshash_partition ;
typedef  int /*<<< orphan*/  dsa_pointer ;
struct TYPE_9__ {scalar_t__ magic; TYPE_4__* partitions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (size_t,size_t) ; 
 scalar_t__ DSHASH_MAGIC ; 
 size_t DSHASH_NUM_PARTITIONS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,size_t) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC10(dshash_table *hash_table)
{
	size_t		i;
	size_t		j;

	FUNC0(hash_table->control->magic == DSHASH_MAGIC);
	FUNC0(!hash_table->find_locked);

	for (i = 0; i < DSHASH_NUM_PARTITIONS; ++i)
	{
		FUNC0(!FUNC4(FUNC6(hash_table, i)));
		FUNC3(FUNC6(hash_table, i), LW_SHARED);
	}

	FUNC8(hash_table);

	FUNC9(stderr,
			"hash table size = %zu\n", (size_t) 1 << hash_table->size_log2);
	for (i = 0; i < DSHASH_NUM_PARTITIONS; ++i)
	{
		dshash_partition *partition = &hash_table->control->partitions[i];
		size_t		begin = FUNC1(i, hash_table->size_log2);
		size_t		end = FUNC1(i + 1, hash_table->size_log2);

		FUNC9(stderr, "  partition %zu\n", i);
		FUNC9(stderr,
				"    active buckets (key count = %zu)\n", partition->count);

		for (j = begin; j < end; ++j)
		{
			size_t		count = 0;
			dsa_pointer bucket = hash_table->buckets[j];

			while (FUNC2(bucket))
			{
				dshash_table_item *item;

				item = FUNC7(hash_table->area, bucket);

				bucket = item->next;
				++count;
			}
			FUNC9(stderr, "      bucket %zu (key count = %zu)\n", j, count);
		}
	}

	for (i = 0; i < DSHASH_NUM_PARTITIONS; ++i)
		FUNC5(FUNC6(hash_table, i));
}