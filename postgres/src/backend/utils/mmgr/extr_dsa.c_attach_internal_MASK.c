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
typedef  int /*<<< orphan*/  dsm_segment ;
struct TYPE_10__ {void* mapped_address; int /*<<< orphan*/ * pagemap; int /*<<< orphan*/ * fpm; int /*<<< orphan*/ * header; int /*<<< orphan*/ * segment; } ;
typedef  TYPE_2__ dsa_segment_map ;
typedef  int /*<<< orphan*/  dsa_segment_header ;
typedef  int /*<<< orphan*/  dsa_pointer ;
typedef  int dsa_handle ;
struct TYPE_9__ {int magic; } ;
struct TYPE_11__ {int handle; int* segment_handles; scalar_t__ refcnt; int /*<<< orphan*/  freed_segment_counter; TYPE_1__ segment_header; } ;
typedef  TYPE_3__ dsa_area_control ;
struct TYPE_12__ {int mapping_pinned; TYPE_3__* control; int /*<<< orphan*/  freed_segment_counter; TYPE_2__* segment_maps; scalar_t__ high_segment_index; } ;
typedef  TYPE_4__ dsa_area ;
typedef  int /*<<< orphan*/  FreePageManager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int DSA_MAX_SEGMENTS ; 
 int DSA_SEGMENT_HEADER_MAGIC ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC9 (int) ; 

__attribute__((used)) static dsa_area *
FUNC10(void *place, dsm_segment *segment, dsa_handle handle)
{
	dsa_area_control *control;
	dsa_area   *area;
	dsa_segment_map *segment_map;

	control = (dsa_area_control *) place;
	FUNC0(control->handle == handle);
	FUNC0(control->segment_handles[0] == handle);
	FUNC0(control->segment_header.magic ==
		   (DSA_SEGMENT_HEADER_MAGIC ^ handle ^ 0));

	/* Build the backend-local area object. */
	area = FUNC9(sizeof(dsa_area));
	area->control = control;
	area->mapping_pinned = false;
	FUNC8(&area->segment_maps[0], 0,
		   sizeof(dsa_segment_map) * DSA_MAX_SEGMENTS);
	area->high_segment_index = 0;

	/* Set up the segment map for this process's mapping. */
	segment_map = &area->segment_maps[0];
	segment_map->segment = segment; /* NULL for in-place */
	segment_map->mapped_address = place;
	segment_map->header = (dsa_segment_header *) segment_map->mapped_address;
	segment_map->fpm = (FreePageManager *)
		(segment_map->mapped_address + FUNC4(sizeof(dsa_area_control)));
	segment_map->pagemap = (dsa_pointer *)
		(segment_map->mapped_address + FUNC4(sizeof(dsa_area_control)) +
		 FUNC4(sizeof(FreePageManager)));

	/* Bump the reference count. */
	FUNC2(FUNC1(area), LW_EXCLUSIVE);
	if (control->refcnt == 0)
	{
		/* We can't attach to a DSA area that has already been destroyed. */
		FUNC5(ERROR,
				(FUNC6(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC7("could not attach to dynamic shared area")));
	}
	++control->refcnt;
	area->freed_segment_counter = area->control->freed_segment_counter;
	FUNC3(FUNC1(area));

	return area;
}