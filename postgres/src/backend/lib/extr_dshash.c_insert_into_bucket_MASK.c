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
typedef  int /*<<< orphan*/  dshash_table_item ;
struct TYPE_5__ {int /*<<< orphan*/  key_size; scalar_t__ entry_size; } ;
struct TYPE_6__ {TYPE_1__ params; int /*<<< orphan*/  area; } ;
typedef  TYPE_2__ dshash_table ;
typedef  int /*<<< orphan*/  dsa_pointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dshash_table_item *
FUNC6(dshash_table *hash_table,
				   const void *key,
				   dsa_pointer *bucket)
{
	dsa_pointer item_pointer;
	dshash_table_item *item;

	item_pointer = FUNC2(hash_table->area,
								hash_table->params.entry_size +
								FUNC1(sizeof(dshash_table_item)));
	item = FUNC3(hash_table->area, item_pointer);
	FUNC5(FUNC0(item), key, hash_table->params.key_size);
	FUNC4(hash_table, item_pointer, item, bucket);
	return item;
}