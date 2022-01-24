#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_media_info {int /*<<< orphan*/  hardware_decoding; scalar_t__ format; scalar_t__ path; } ;
struct TYPE_4__ {int thread_valid; int /*<<< orphan*/  thread; int /*<<< orphan*/  hw; int /*<<< orphan*/ * format_name; int /*<<< orphan*/ * path; int /*<<< orphan*/  sem; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ mp_media_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  mp_media_thread_start ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC5(mp_media_t *m,
					  const struct mp_media_info *info)
{
	if (FUNC4(&m->mutex, NULL) != 0) {
		FUNC0(LOG_WARNING, "MP: Failed to init mutex");
		return false;
	}
	if (FUNC2(&m->sem, 0) != 0) {
		FUNC0(LOG_WARNING, "MP: Failed to init semaphore");
		return false;
	}

	m->path = info->path ? FUNC1(info->path) : NULL;
	m->format_name = info->format ? FUNC1(info->format) : NULL;
	m->hw = info->hardware_decoding;

	if (FUNC3(&m->thread, NULL, mp_media_thread_start, m) != 0) {
		FUNC0(LOG_WARNING, "MP: Could not create media thread");
		return false;
	}

	m->thread_valid = true;
	return true;
}