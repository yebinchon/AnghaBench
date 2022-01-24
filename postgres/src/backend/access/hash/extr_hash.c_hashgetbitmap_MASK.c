#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
struct TYPE_8__ {size_t itemIndex; TYPE_3__* items; } ;
struct TYPE_11__ {TYPE_1__ currPos; } ;
struct TYPE_10__ {int /*<<< orphan*/  heapTid; } ;
struct TYPE_9__ {int /*<<< orphan*/  opaque; } ;
typedef  int /*<<< orphan*/  TIDBitmap ;
typedef  TYPE_2__* IndexScanDesc ;
typedef  TYPE_3__ HashScanPosItem ;
typedef  TYPE_4__* HashScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  ForwardScanDirection ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

int64
FUNC3(IndexScanDesc scan, TIDBitmap *tbm)
{
	HashScanOpaque so = (HashScanOpaque) scan->opaque;
	bool		res;
	int64		ntids = 0;
	HashScanPosItem *currItem;

	res = FUNC0(scan, ForwardScanDirection);

	while (res)
	{
		currItem = &so->currPos.items[so->currPos.itemIndex];

		/*
		 * _hash_first and _hash_next handle eliminate dead index entries
		 * whenever scan->ignore_killed_tuples is true.  Therefore, there's
		 * nothing to do here except add the results to the TIDBitmap.
		 */
		FUNC2(tbm, &(currItem->heapTid), 1, true);
		ntids++;

		res = FUNC1(scan, ForwardScanDirection);
	}

	return ntids;
}