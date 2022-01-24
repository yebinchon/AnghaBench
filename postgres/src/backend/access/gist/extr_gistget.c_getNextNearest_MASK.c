#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  orderByTypes; } ;
struct TYPE_14__ {TYPE_4__* recontup; int /*<<< orphan*/  recheckDistances; int /*<<< orphan*/  recheck; int /*<<< orphan*/  heapPtr; } ;
struct TYPE_15__ {TYPE_1__ heap; } ;
struct TYPE_17__ {int /*<<< orphan*/  distances; TYPE_2__ data; } ;
struct TYPE_16__ {TYPE_4__* xs_hitup; scalar_t__ xs_want_itup; int /*<<< orphan*/  xs_recheck; int /*<<< orphan*/  xs_heaptid; int /*<<< orphan*/  opaque; } ;
typedef  TYPE_3__* IndexScanDesc ;
typedef  TYPE_4__ GISTSearchItem ;
typedef  TYPE_5__* GISTScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_4__) ; 
 TYPE_4__* FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static bool
FUNC6(IndexScanDesc scan)
{
	GISTScanOpaque so = (GISTScanOpaque) scan->opaque;
	bool		res = false;

	if (scan->xs_hitup)
	{
		/* free previously returned tuple */
		FUNC5(scan->xs_hitup);
		scan->xs_hitup = NULL;
	}

	do
	{
		GISTSearchItem *item = FUNC2(so);

		if (!item)
			break;

		if (FUNC1(*item))
		{
			/* found a heap item at currently minimal distance */
			scan->xs_heaptid = item->data.heap.heapPtr;
			scan->xs_recheck = item->data.heap.recheck;

			FUNC4(scan, so->orderByTypes,
												 item->distances,
												 item->data.heap.recheckDistances);

			/* in an index-only scan, also return the reconstructed tuple. */
			if (scan->xs_want_itup)
				scan->xs_hitup = item->data.heap.recontup;
			res = true;
		}
		else
		{
			/* visit an index page, extract its items into queue */
			FUNC0();

			FUNC3(scan, item, item->distances, NULL, NULL);
		}

		FUNC5(item);
	} while (!res);

	return res;
}