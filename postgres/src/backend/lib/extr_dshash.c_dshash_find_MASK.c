#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dshash_table_item ;
struct TYPE_10__ {int find_locked; int find_exclusively_locked; TYPE_1__* control; } ;
typedef  TYPE_2__ dshash_table ;
typedef  int /*<<< orphan*/  dshash_hash ;
struct TYPE_9__ {scalar_t__ magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ DSHASH_MAGIC ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  LW_SHARED ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,void const*) ; 

void *
FUNC10(dshash_table *hash_table, const void *key, bool exclusive)
{
	dshash_hash hash;
	size_t		partition;
	dshash_table_item *item;

	hash = FUNC9(hash_table, key);
	partition = FUNC5(hash);

	FUNC0(hash_table->control->magic == DSHASH_MAGIC);
	FUNC0(!hash_table->find_locked);

	FUNC3(FUNC6(hash_table, partition),
				  exclusive ? LW_EXCLUSIVE : LW_SHARED);
	FUNC7(hash_table);

	/* Search the active bucket. */
	item = FUNC8(hash_table, key, FUNC1(hash_table, hash));

	if (!item)
	{
		/* Not found. */
		FUNC4(FUNC6(hash_table, partition));
		return NULL;
	}
	else
	{
		/* The caller will free the lock by calling dshash_release_lock. */
		hash_table->find_locked = true;
		hash_table->find_exclusively_locked = exclusive;
		return FUNC2(item);
	}
}