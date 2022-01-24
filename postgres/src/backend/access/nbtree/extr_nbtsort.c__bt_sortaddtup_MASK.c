#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int t_info; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  TYPE_1__ IndexTupleData ;
typedef  TYPE_1__* IndexTuple ;
typedef  int /*<<< orphan*/  BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ P_FIRSTKEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(Page page,
			   Size itemsize,
			   IndexTuple itup,
			   OffsetNumber itup_off)
{
	BTPageOpaque opaque = (BTPageOpaque) FUNC3(page);
	IndexTupleData trunctuple;

	if (!FUNC1(opaque) && itup_off == P_FIRSTKEY)
	{
		trunctuple = *itup;
		trunctuple.t_info = sizeof(IndexTupleData);
		/* Deliberately zero INDEX_ALT_TID_MASK bits */
		FUNC0(&trunctuple, 0);
		itup = &trunctuple;
		itemsize = sizeof(IndexTupleData);
	}

	if (FUNC2(page, (Item) itup, itemsize, itup_off,
					false, false) == InvalidOffsetNumber)
		FUNC4(ERROR, "failed to add item to the index page");
}