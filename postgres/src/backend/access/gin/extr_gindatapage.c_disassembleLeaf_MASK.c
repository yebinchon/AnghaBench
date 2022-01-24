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
struct TYPE_5__ {int nitems; int /*<<< orphan*/  node; int /*<<< orphan*/ * items; int /*<<< orphan*/ * seg; int /*<<< orphan*/  action; } ;
typedef  TYPE_1__ leafSegmentInfo ;
struct TYPE_6__ {int oldformat; int /*<<< orphan*/  segments; } ;
typedef  TYPE_2__ disassembledLeaf ;
typedef  scalar_t__ Pointer ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  GinPostingList ;

/* Variables and functions */
 int /*<<< orphan*/  GIN_SEGMENT_REPLACE ; 
 int /*<<< orphan*/  GIN_SEGMENT_UNMODIFIED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (int) ; 
 TYPE_2__* FUNC9 (int) ; 

__attribute__((used)) static disassembledLeaf *
FUNC10(Page page)
{
	disassembledLeaf *leaf;
	GinPostingList *seg;
	Pointer		segbegin;
	Pointer		segend;

	leaf = FUNC9(sizeof(disassembledLeaf));
	FUNC5(&leaf->segments);

	if (FUNC3(page))
	{
		/*
		 * Create a leafSegmentInfo entry for each segment.
		 */
		seg = FUNC0(page);
		segbegin = (Pointer) seg;
		segend = segbegin + FUNC1(page);
		while ((Pointer) seg < segend)
		{
			leafSegmentInfo *seginfo = FUNC8(sizeof(leafSegmentInfo));

			seginfo->action = GIN_SEGMENT_UNMODIFIED;
			seginfo->seg = seg;
			seginfo->items = NULL;
			seginfo->nitems = 0;
			FUNC6(&leaf->segments, &seginfo->node);

			seg = FUNC2(seg);
		}
		leaf->oldformat = false;
	}
	else
	{
		/*
		 * A pre-9.4 format uncompressed page is represented by a single
		 * segment, with an array of items.  The corner case is uncompressed
		 * page containing no items, which is represented as no segments.
		 */
		ItemPointer uncompressed;
		int			nuncompressed;
		leafSegmentInfo *seginfo;

		uncompressed = FUNC4(page, &nuncompressed);

		if (nuncompressed > 0)
		{
			seginfo = FUNC8(sizeof(leafSegmentInfo));

			seginfo->action = GIN_SEGMENT_REPLACE;
			seginfo->seg = NULL;
			seginfo->items = FUNC8(nuncompressed * sizeof(ItemPointerData));
			FUNC7(seginfo->items, uncompressed, nuncompressed * sizeof(ItemPointerData));
			seginfo->nitems = nuncompressed;

			FUNC6(&leaf->segments, &seginfo->node);
		}

		leaf->oldformat = true;
	}

	return leaf;
}