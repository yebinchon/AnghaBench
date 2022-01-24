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
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_3__ {int signalled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  manual; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ os_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(os_event_t *event, unsigned long milliseconds)
{
	int code = 0;
	FUNC4(&event->mutex);
	if (!event->signalled) {
		struct timespec ts;
#if defined(__APPLE__) || defined(__MINGW32__)
		struct timeval tv;
		gettimeofday(&tv, NULL);
		ts.tv_sec = tv.tv_sec;
		ts.tv_nsec = tv.tv_usec * 1000;
#else
		FUNC1(CLOCK_REALTIME, &ts);
#endif
		FUNC0(&ts, milliseconds);
		code = FUNC3(&event->cond, &event->mutex, &ts);
	}

	if (code == 0) {
		if (!event->manual)
			event->signalled = false;
	}

	FUNC5(&event->mutex);

	return code;
}