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
typedef  int uint64_t ;
struct TYPE_2__ {int interrupt_poll_ts; int /*<<< orphan*/  mutex; scalar_t__ stopping; scalar_t__ kill; } ;
typedef  TYPE_1__ mp_media_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *data)
{
	mp_media_t *m = data;
	bool stop = false;
	uint64_t ts = FUNC0();

	if ((ts - m->interrupt_poll_ts) > 20000000) {
		FUNC1(&m->mutex);
		stop = m->kill || m->stopping;
		FUNC2(&m->mutex);

		m->interrupt_poll_ts = ts;
	}

	return stop;
}