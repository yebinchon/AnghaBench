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
struct TYPE_3__ {int phase; int /*<<< orphan*/  mutex; int /*<<< orphan*/  participants; int /*<<< orphan*/  static_party; } ;
typedef  TYPE_1__ Barrier ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(Barrier *barrier)
{
	int			phase;

	FUNC0(!barrier->static_party);

	FUNC1(&barrier->mutex);
	++barrier->participants;
	phase = barrier->phase;
	FUNC2(&barrier->mutex);

	return phase;
}