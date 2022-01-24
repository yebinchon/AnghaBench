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
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ last_xlog_end; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ FixedParallelState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* MyFixedParallelState ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(XLogRecPtr last_xlog_end)
{
	FixedParallelState *fps = MyFixedParallelState;

	FUNC0(fps != NULL);
	FUNC1(&fps->mutex);
	if (fps->last_xlog_end < last_xlog_end)
		fps->last_xlog_end = last_xlog_end;
	FUNC2(&fps->mutex);
}