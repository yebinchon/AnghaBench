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
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_2__ {int /*<<< orphan*/  mutex_threshold; int /*<<< orphan*/  threshold_timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* oldSnapshotControl ; 

TimestampTz
FUNC2(void)
{
	TimestampTz threshold_timestamp;

	FUNC0(&oldSnapshotControl->mutex_threshold);
	threshold_timestamp = oldSnapshotControl->threshold_timestamp;
	FUNC1(&oldSnapshotControl->mutex_threshold);

	return threshold_timestamp;
}