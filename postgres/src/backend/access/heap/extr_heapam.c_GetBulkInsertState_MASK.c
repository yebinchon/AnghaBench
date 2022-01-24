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
struct TYPE_3__ {int /*<<< orphan*/  current_buf; int /*<<< orphan*/  strategy; } ;
typedef  int /*<<< orphan*/  BulkInsertStateData ;
typedef  TYPE_1__* BulkInsertState ;

/* Variables and functions */
 int /*<<< orphan*/  BAS_BULKWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 scalar_t__ FUNC1 (int) ; 

BulkInsertState
FUNC2(void)
{
	BulkInsertState bistate;

	bistate = (BulkInsertState) FUNC1(sizeof(BulkInsertStateData));
	bistate->strategy = FUNC0(BAS_BULKWRITE);
	bistate->current_buf = InvalidBuffer;
	return bistate;
}