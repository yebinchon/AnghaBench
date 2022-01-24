#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ xs_recheck; } ;
struct TYPE_4__ {int /*<<< orphan*/  slot; int /*<<< orphan*/  scan; TYPE_3__* iscan; scalar_t__ irel; } ;
typedef  TYPE_1__* SysScanDesc ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HeapTuple
FUNC5(SysScanDesc sysscan)
{
	HeapTuple	htup = NULL;

	if (sysscan->irel)
	{
		if (FUNC3(sysscan->iscan, ForwardScanDirection, sysscan->slot))
		{
			bool		shouldFree;

			htup = FUNC1(sysscan->slot, false, &shouldFree);
			FUNC0(!shouldFree);

			/*
			 * We currently don't need to support lossy index operators for
			 * any system catalog scan.  It could be done here, using the scan
			 * keys to drive the operator calls, if we arranged to save the
			 * heap attnums during systable_beginscan(); this is practical
			 * because we still wouldn't need to support indexes on
			 * expressions.
			 */
			if (sysscan->iscan->xs_recheck)
				FUNC2(ERROR, "system catalog scans with lossy index conditions are not implemented");
		}
	}
	else
	{
		if (FUNC4(sysscan->scan, ForwardScanDirection, sysscan->slot))
		{
			bool		shouldFree;

			htup = FUNC1(sysscan->slot, false, &shouldFree);
			FUNC0(!shouldFree);
		}
	}

	return htup;
}