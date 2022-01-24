#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  hash; } ;
typedef  TYPE_2__ dshash_table_item ;
struct TYPE_11__ {int find_locked; int find_exclusively_locked; TYPE_1__* control; } ;
typedef  TYPE_3__ dshash_table ;
struct TYPE_9__ {scalar_t__ magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DSHASH_MAGIC ; 
 TYPE_2__* FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*) ; 

void
FUNC7(dshash_table *hash_table, void *entry)
{
	dshash_table_item *item = FUNC1(entry);
	size_t		partition = FUNC4(item->hash);

	FUNC0(hash_table->control->magic == DSHASH_MAGIC);
	FUNC0(hash_table->find_locked);
	FUNC0(hash_table->find_exclusively_locked);
	FUNC0(FUNC2(FUNC5(hash_table, partition),
								LW_EXCLUSIVE));

	FUNC6(hash_table, item);
	hash_table->find_locked = false;
	hash_table->find_exclusively_locked = false;
	FUNC3(FUNC5(hash_table, partition));
}