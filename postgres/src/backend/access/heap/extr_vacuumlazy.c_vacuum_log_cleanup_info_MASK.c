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
struct TYPE_7__ {int /*<<< orphan*/  latestRemovedXid; } ;
struct TYPE_6__ {int /*<<< orphan*/  rd_node; } ;
typedef  TYPE_1__* Relation ;
typedef  TYPE_2__ LVRelStats ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(Relation rel, LVRelStats *vacrelstats)
{
	/*
	 * Skip this for relations for which no WAL is to be written, or if we're
	 * not trying to support archive recovery.
	 */
	if (!FUNC0(rel) || !FUNC2())
		return;

	/*
	 * No need to write the record at all unless it contains a valid value
	 */
	if (FUNC1(vacrelstats->latestRemovedXid))
		(void) FUNC3(rel->rd_node, vacrelstats->latestRemovedXid);
}