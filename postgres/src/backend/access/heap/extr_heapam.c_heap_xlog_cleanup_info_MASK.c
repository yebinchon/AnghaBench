#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  node; int /*<<< orphan*/  latestRemovedXid; } ;
typedef  TYPE_1__ xl_heap_cleanup_info ;
typedef  int /*<<< orphan*/  XLogReaderState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ InHotStandby ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(XLogReaderState *record)
{
	xl_heap_cleanup_info *xlrec = (xl_heap_cleanup_info *) FUNC2(record);

	if (InHotStandby)
		FUNC1(xlrec->latestRemovedXid, xlrec->node);

	/*
	 * Actual operation is a no-op. Record type exists to provide a means for
	 * conflict processing to occur before we begin index vacuum actions. see
	 * vacuumlazy.c and also comments in btvacuumpage()
	 */

	/* Backup blocks are not used in cleanup_info records */
	FUNC0(!FUNC3(record));
}