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
struct TYPE_4__ {TYPE_3__* iscan; int /*<<< orphan*/  slot; int /*<<< orphan*/  irel; } ;
typedef  TYPE_1__* SysScanDesc ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HeapTuple
FUNC4(SysScanDesc sysscan, ScanDirection direction)
{
	HeapTuple	htup = NULL;

	FUNC0(sysscan->irel);
	if (FUNC3(sysscan->iscan, direction, sysscan->slot))
		htup = FUNC1(sysscan->slot, false, NULL);

	/* See notes in systable_getnext */
	if (htup && sysscan->iscan->xs_recheck)
		FUNC2(ERROR, "system catalog scans with lossy index conditions are not implemented");

	return htup;
}