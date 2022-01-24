#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ numKilled; int markItemIndex; struct TYPE_7__* currTuples; struct TYPE_7__* killedItems; int /*<<< orphan*/ * arrayContext; struct TYPE_7__* keyData; int /*<<< orphan*/  markPos; int /*<<< orphan*/  currPos; } ;
struct TYPE_6__ {int /*<<< orphan*/  opaque; } ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  TYPE_2__* BTScanOpaque ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(IndexScanDesc scan)
{
	BTScanOpaque so = (BTScanOpaque) scan->opaque;

	/* we aren't holding any read locks, but gotta drop the pins */
	if (FUNC0(so->currPos))
	{
		/* Before leaving current page, deal with any killed items */
		if (so->numKilled > 0)
			FUNC3(scan);
		FUNC1(so->currPos);
	}

	so->markItemIndex = -1;
	FUNC1(so->markPos);

	/* No need to invalidate positions, the RAM is about to be freed. */

	/* Release storage */
	if (so->keyData != NULL)
		FUNC4(so->keyData);
	/* so->arrayKeyData and so->arrayKeys are in arrayContext */
	if (so->arrayContext != NULL)
		FUNC2(so->arrayContext);
	if (so->killedItems != NULL)
		FUNC4(so->killedItems);
	if (so->currTuples != NULL)
		FUNC4(so->currTuples);
	/* so->markTuples should not be pfree'd, see btrescan */
	FUNC4(so);
}