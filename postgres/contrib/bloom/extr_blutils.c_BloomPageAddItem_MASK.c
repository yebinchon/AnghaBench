#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ maxoff; } ;
struct TYPE_9__ {int /*<<< orphan*/  sizeOfBloomTuple; } ;
struct TYPE_8__ {scalar_t__ pd_lower; scalar_t__ pd_upper; } ;
typedef  scalar_t__ Pointer ;
typedef  TYPE_1__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  BloomTuple ;
typedef  TYPE_2__ BloomState ;
typedef  TYPE_3__* BloomPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 TYPE_3__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

bool
FUNC7(BloomState *state, Page page, BloomTuple *tuple)
{
	BloomTuple *itup;
	BloomPageOpaque opaque;
	Pointer		ptr;

	/* We shouldn't be pointed to an invalid page */
	FUNC0(!FUNC5(page) && !FUNC4(page));

	/* Does new tuple fit on the page? */
	if (FUNC1(state, page) < state->sizeOfBloomTuple)
		return false;

	/* Copy new tuple to the end of page */
	opaque = FUNC2(page);
	itup = FUNC3(state, page, opaque->maxoff + 1);
	FUNC6((Pointer) itup, (Pointer) tuple, state->sizeOfBloomTuple);

	/* Adjust maxoff and pd_lower */
	opaque->maxoff++;
	ptr = (Pointer) FUNC3(state, page, opaque->maxoff + 1);
	((PageHeader) page)->pd_lower = ptr - page;

	/* Assert we didn't overrun available space */
	FUNC0(((PageHeader) page)->pd_lower <= ((PageHeader) page)->pd_upper);

	return true;
}