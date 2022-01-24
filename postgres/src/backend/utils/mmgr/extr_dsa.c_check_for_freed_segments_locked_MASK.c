#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t freed_segment_counter; int high_segment_index; TYPE_3__* segment_maps; TYPE_1__* control; } ;
typedef  TYPE_4__ dsa_area ;
struct TYPE_9__ {int /*<<< orphan*/ * mapped_address; TYPE_2__* header; int /*<<< orphan*/ * segment; } ;
struct TYPE_8__ {scalar_t__ freed; } ;
struct TYPE_7__ {size_t freed_segment_counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(dsa_area *area)
{
	size_t		freed_segment_counter;
	int			i;

	FUNC0(FUNC2(FUNC1(area)));
	freed_segment_counter = area->control->freed_segment_counter;
	if (FUNC4(area->freed_segment_counter != freed_segment_counter))
	{
		for (i = 0; i <= area->high_segment_index; ++i)
		{
			if (area->segment_maps[i].header != NULL &&
				area->segment_maps[i].header->freed)
			{
				FUNC3(area->segment_maps[i].segment);
				area->segment_maps[i].segment = NULL;
				area->segment_maps[i].header = NULL;
				area->segment_maps[i].mapped_address = NULL;
			}
		}
		area->freed_segment_counter = freed_segment_counter;
	}
}