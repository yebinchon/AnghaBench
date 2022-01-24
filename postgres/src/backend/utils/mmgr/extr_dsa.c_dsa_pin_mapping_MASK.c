#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mapping_pinned; int high_segment_index; TYPE_1__* segment_maps; } ;
typedef  TYPE_2__ dsa_area ;
struct TYPE_4__ {int /*<<< orphan*/ * segment; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(dsa_area *area)
{
	int			i;

	FUNC0(!area->mapping_pinned);
	area->mapping_pinned = true;

	for (i = 0; i <= area->high_segment_index; ++i)
		if (area->segment_maps[i].segment != NULL)
			FUNC1(area->segment_maps[i].segment);
}