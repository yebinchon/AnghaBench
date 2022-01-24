#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tuple_len; int /*<<< orphan*/  tuple_count; int /*<<< orphan*/  dead_tuple_len; int /*<<< orphan*/  dead_tuple_count; int /*<<< orphan*/  free_space; } ;
typedef  TYPE_1__ pgstattuple_type ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(pgstattuple_type *stat, Page page,
				  OffsetNumber minoff, OffsetNumber maxoff)
{
	OffsetNumber i;

	stat->free_space += FUNC3(page);

	for (i = minoff; i <= maxoff; i = FUNC2(i))
	{
		ItemId		itemid = FUNC4(page, i);

		if (FUNC1(itemid))
		{
			stat->dead_tuple_count++;
			stat->dead_tuple_len += FUNC0(itemid);
		}
		else
		{
			stat->tuple_count++;
			stat->tuple_len += FUNC0(itemid);
		}
	}
}