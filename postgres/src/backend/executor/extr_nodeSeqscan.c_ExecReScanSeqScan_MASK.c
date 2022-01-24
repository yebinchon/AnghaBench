#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * TableScanDesc ;
struct TYPE_4__ {int /*<<< orphan*/ * ss_currentScanDesc; } ;
struct TYPE_5__ {TYPE_1__ ss; } ;
typedef  TYPE_2__ SeqScanState ;
typedef  int /*<<< orphan*/  ScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2(SeqScanState *node)
{
	TableScanDesc scan;

	scan = node->ss.ss_currentScanDesc;

	if (scan != NULL)
		FUNC1(scan,		/* scan desc */
					 NULL);		/* new scan keys */

	FUNC0((ScanState *) node);
}