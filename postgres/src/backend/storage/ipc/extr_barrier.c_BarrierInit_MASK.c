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
struct TYPE_3__ {int participants; int static_party; int /*<<< orphan*/  condition_variable; scalar_t__ elected; scalar_t__ phase; scalar_t__ arrived; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ Barrier ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(Barrier *barrier, int participants)
{
	FUNC1(&barrier->mutex);
	barrier->participants = participants;
	barrier->arrived = 0;
	barrier->phase = 0;
	barrier->elected = 0;
	barrier->static_party = participants > 0;
	FUNC0(&barrier->condition_variable);
}