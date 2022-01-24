#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* rd_tableam; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* parallelscan_estimate ) (TYPE_2__*) ;} ;
typedef  scalar_t__ Snapshot ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_2__* Relation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ SnapshotAny ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

Size
FUNC5(Relation rel, Snapshot snapshot)
{
	Size		sz = 0;

	if (FUNC2(snapshot))
		sz = FUNC3(sz, FUNC1(snapshot));
	else
		FUNC0(snapshot == SnapshotAny);

	sz = FUNC3(sz, rel->rd_tableam->parallelscan_estimate(rel));

	return sz;
}