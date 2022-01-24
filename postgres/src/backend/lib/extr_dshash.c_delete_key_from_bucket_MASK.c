#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  next; } ;
typedef  TYPE_1__ dshash_table_item ;
struct TYPE_8__ {int /*<<< orphan*/  area; } ;
typedef  TYPE_2__ dshash_table ;
typedef  int /*<<< orphan*/  dsa_pointer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(dshash_table *hash_table,
					   const void *key,
					   dsa_pointer *bucket_head)
{
	while (FUNC0(*bucket_head))
	{
		dshash_table_item *item;

		item = FUNC3(hash_table->area, *bucket_head);

		if (FUNC4(hash_table, key, FUNC1(item)))
		{
			dsa_pointer next;

			next = item->next;
			FUNC2(hash_table->area, *bucket_head);
			*bucket_head = next;

			return true;
		}
		bucket_head = &item->next;
	}
	return false;
}