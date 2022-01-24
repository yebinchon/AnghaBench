#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/ * mapped_address; TYPE_2__* header; int /*<<< orphan*/ * segment; int /*<<< orphan*/  fpm; } ;
typedef  TYPE_3__ dsa_segment_map ;
typedef  size_t dsa_segment_index ;
typedef  int /*<<< orphan*/  dsa_pointer ;
struct TYPE_23__ {int size_class; int /*<<< orphan*/  npages; int /*<<< orphan*/  start; } ;
typedef  TYPE_4__ dsa_area_span ;
struct TYPE_24__ {TYPE_1__* control; } ;
typedef  TYPE_5__ dsa_area ;
struct TYPE_21__ {scalar_t__ usable_pages; int freed; scalar_t__ size; } ;
struct TYPE_20__ {scalar_t__ total_segment_size; int /*<<< orphan*/  freed_segment_counter; int /*<<< orphan*/ * segment_handles; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int DSA_SCLASS_BLOCK_OF_SPANS ; 
 int /*<<< orphan*/  DSM_HANDLE_INVALID ; 
 int FPM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 size_t FUNC15 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC18(dsa_area *area, dsa_pointer span_pointer)
{
	dsa_area_span *span = FUNC9(area, span_pointer);
	int			size_class = span->size_class;
	dsa_segment_map *segment_map;


	/* Remove it from its fullness class list. */
	FUNC17(area, span);

	/*
	 * Note: Here we acquire the area lock while we already hold a per-pool
	 * lock.  We never hold the area lock and then take a pool lock, or we
	 * could deadlock.
	 */
	FUNC5(FUNC1(area), LW_EXCLUSIVE);
	FUNC7(area);
	segment_map =
		FUNC14(area, FUNC3(span->start));
	FUNC4(segment_map->fpm,
					   FUNC2(span->start) / FPM_PAGE_SIZE,
					   span->npages);
	/* Check if the segment is now entirely free. */
	if (FUNC13(segment_map->fpm) == segment_map->header->usable_pages)
	{
		dsa_segment_index index = FUNC15(area, segment_map);

		/* If it's not the segment with extra control data, free it. */
		if (index != 0)
		{
			/*
			 * Give it back to the OS, and allow other backends to detect that
			 * they need to detach.
			 */
			FUNC16(area, segment_map);
			segment_map->header->freed = true;
			FUNC0(area->control->total_segment_size >=
				   segment_map->header->size);
			area->control->total_segment_size -=
				segment_map->header->size;
			FUNC12(FUNC11(segment_map->segment));
			FUNC10(segment_map->segment);
			area->control->segment_handles[index] = DSM_HANDLE_INVALID;
			++area->control->freed_segment_counter;
			segment_map->segment = NULL;
			segment_map->header = NULL;
			segment_map->mapped_address = NULL;
		}
	}
	FUNC6(FUNC1(area));

	/*
	 * Span-of-spans blocks store the span which describes them within the
	 * block itself, so freeing the storage implicitly frees the descriptor
	 * also.  If this is a block of any other type, we need to separately free
	 * the span object also.  This recursive call to dsa_free will acquire the
	 * span pool's lock.  We can't deadlock because the acquisition order is
	 * always some other pool and then the span pool.
	 */
	if (size_class != DSA_SCLASS_BLOCK_OF_SPANS)
		FUNC8(area, span_pointer);
}