#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TableScanDesc ;
struct TYPE_3__ {int /*<<< orphan*/  rs_flags; int /*<<< orphan*/  rs_snapshot; } ;
typedef  int /*<<< orphan*/  Snapshot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SO_TEMP_SNAPSHOT ; 

void
FUNC3(TableScanDesc scan, Snapshot snapshot)
{
	FUNC0(FUNC1(snapshot));

	FUNC2(snapshot);
	scan->rs_snapshot = snapshot;
	scan->rs_flags |= SO_TEMP_SNAPSHOT;
}