#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsm_segment ;
struct TYPE_11__ {TYPE_3__* header; int /*<<< orphan*/ * fpm; scalar_t__ mapped_address; int /*<<< orphan*/ * pagemap; int /*<<< orphan*/ * segment; } ;
typedef  TYPE_2__ dsa_segment_map ;
typedef  size_t dsa_segment_index ;
struct TYPE_12__ {size_t magic; size_t usable_pages; size_t size; size_t bin; size_t prev; size_t next; int freed; } ;
typedef  TYPE_3__ dsa_segment_header ;
typedef  int /*<<< orphan*/  dsa_pointer ;
struct TYPE_13__ {size_t high_segment_index; TYPE_1__* control; TYPE_2__* segment_maps; scalar_t__ mapping_pinned; } ;
typedef  TYPE_4__ dsa_area ;
struct TYPE_10__ {scalar_t__* segment_handles; scalar_t__ total_segment_size; scalar_t__ max_total_segment_size; size_t high_segment_index; size_t handle; size_t* segment_bins; } ;
typedef  int /*<<< orphan*/  FreePageManager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 size_t DSA_INITIAL_SEGMENT_SIZE ; 
 size_t DSA_MAX_SEGMENTS ; 
 size_t DSA_MAX_SEGMENT_SIZE ; 
 size_t DSA_NUM_SEGMENTS_AT_EACH_SIZE ; 
 size_t DSA_SEGMENT_HEADER_MAGIC ; 
 size_t DSA_SEGMENT_INDEX_NONE ; 
 scalar_t__ DSM_HANDLE_INVALID ; 
 size_t FPM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int) ; 
 size_t FUNC6 (size_t,size_t) ; 
 size_t FUNC7 (size_t) ; 
 int /*<<< orphan*/ * FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (TYPE_4__*,size_t) ; 

__attribute__((used)) static dsa_segment_map *
FUNC14(dsa_area *area, size_t requested_pages)
{
	dsa_segment_index new_index;
	size_t		metadata_bytes;
	size_t		total_size;
	size_t		total_pages;
	size_t		usable_pages;
	dsa_segment_map *segment_map;
	dsm_segment *segment;

	FUNC0(FUNC4(FUNC1(area)));

	/* Find a segment slot that is not in use (linearly for now). */
	for (new_index = 1; new_index < DSA_MAX_SEGMENTS; ++new_index)
	{
		if (area->control->segment_handles[new_index] == DSM_HANDLE_INVALID)
			break;
	}
	if (new_index == DSA_MAX_SEGMENTS)
		return NULL;

	/*
	 * If the total size limit is already exceeded, then we exit early and
	 * avoid arithmetic wraparound in the unsigned expressions below.
	 */
	if (area->control->total_segment_size >=
		area->control->max_total_segment_size)
		return NULL;

	/*
	 * The size should be at least as big as requested, and at least big
	 * enough to follow a geometric series that approximately doubles the
	 * total storage each time we create a new segment.  We use geometric
	 * growth because the underlying DSM system isn't designed for large
	 * numbers of segments (otherwise we might even consider just using one
	 * DSM segment for each large allocation and for each superblock, and then
	 * we wouldn't need to use FreePageManager).
	 *
	 * We decide on a total segment size first, so that we produce tidy
	 * power-of-two sized segments.  This is a good property to have if we
	 * move to huge pages in the future.  Then we work back to the number of
	 * pages we can fit.
	 */
	total_size = DSA_INITIAL_SEGMENT_SIZE *
		((size_t) 1 << (new_index / DSA_NUM_SEGMENTS_AT_EACH_SIZE));
	total_size = FUNC6(total_size, DSA_MAX_SEGMENT_SIZE);
	total_size = FUNC6(total_size,
					 area->control->max_total_segment_size -
					 area->control->total_segment_size);

	total_pages = total_size / FPM_PAGE_SIZE;
	metadata_bytes =
		FUNC5(sizeof(dsa_segment_header)) +
		FUNC5(sizeof(FreePageManager)) +
		sizeof(dsa_pointer) * total_pages;

	/* Add padding up to next page boundary. */
	if (metadata_bytes % FPM_PAGE_SIZE != 0)
		metadata_bytes += FPM_PAGE_SIZE - (metadata_bytes % FPM_PAGE_SIZE);
	if (total_size <= metadata_bytes)
		return NULL;
	usable_pages = (total_size - metadata_bytes) / FPM_PAGE_SIZE;
	FUNC0(metadata_bytes + usable_pages * FPM_PAGE_SIZE <= total_size);

	/* See if that is enough... */
	if (requested_pages > usable_pages)
	{
		/*
		 * We'll make an odd-sized segment, working forward from the requested
		 * number of pages.
		 */
		usable_pages = requested_pages;
		metadata_bytes =
			FUNC5(sizeof(dsa_segment_header)) +
			FUNC5(sizeof(FreePageManager)) +
			usable_pages * sizeof(dsa_pointer);

		/* Add padding up to next page boundary. */
		if (metadata_bytes % FPM_PAGE_SIZE != 0)
			metadata_bytes += FPM_PAGE_SIZE - (metadata_bytes % FPM_PAGE_SIZE);
		total_size = metadata_bytes + usable_pages * FPM_PAGE_SIZE;

		/* Is that too large for dsa_pointer's addressing scheme? */
		if (total_size > DSA_MAX_SEGMENT_SIZE)
			return NULL;

		/* Would that exceed the limit? */
		if (total_size > area->control->max_total_segment_size -
			area->control->total_segment_size)
			return NULL;
	}

	/* Create the segment. */
	segment = FUNC8(total_size, 0);
	if (segment == NULL)
		return NULL;
	FUNC10(segment);
	if (area->mapping_pinned)
		FUNC9(segment);

	/* Store the handle in shared memory to be found by index. */
	area->control->segment_handles[new_index] =
		FUNC12(segment);
	/* Track the highest segment index in the history of the area. */
	if (area->control->high_segment_index < new_index)
		area->control->high_segment_index = new_index;
	/* Track the highest segment index this backend has ever mapped. */
	if (area->high_segment_index < new_index)
		area->high_segment_index = new_index;
	/* Track total size of all segments. */
	area->control->total_segment_size += total_size;
	FUNC0(area->control->total_segment_size <=
		   area->control->max_total_segment_size);

	/* Build a segment map for this segment in this backend. */
	segment_map = &area->segment_maps[new_index];
	segment_map->segment = segment;
	segment_map->mapped_address = FUNC11(segment);
	segment_map->header = (dsa_segment_header *) segment_map->mapped_address;
	segment_map->fpm = (FreePageManager *)
		(segment_map->mapped_address +
		 FUNC5(sizeof(dsa_segment_header)));
	segment_map->pagemap = (dsa_pointer *)
		(segment_map->mapped_address +
		 FUNC5(sizeof(dsa_segment_header)) +
		 FUNC5(sizeof(FreePageManager)));

	/* Set up the free page map. */
	FUNC2(segment_map->fpm, segment_map->mapped_address);
	FUNC3(segment_map->fpm, metadata_bytes / FPM_PAGE_SIZE,
					   usable_pages);

	/* Set up the segment header and put it in the appropriate bin. */
	segment_map->header->magic =
		DSA_SEGMENT_HEADER_MAGIC ^ area->control->handle ^ new_index;
	segment_map->header->usable_pages = usable_pages;
	segment_map->header->size = total_size;
	segment_map->header->bin = FUNC7(usable_pages);
	segment_map->header->prev = DSA_SEGMENT_INDEX_NONE;
	segment_map->header->next =
		area->control->segment_bins[segment_map->header->bin];
	segment_map->header->freed = false;
	area->control->segment_bins[segment_map->header->bin] = new_index;
	if (segment_map->header->next != DSA_SEGMENT_INDEX_NONE)
	{
		dsa_segment_map *next =
		FUNC13(area, segment_map->header->next);

		FUNC0(next->header->bin == segment_map->header->bin);
		next->header->prev = new_index;
	}

	return segment_map;
}