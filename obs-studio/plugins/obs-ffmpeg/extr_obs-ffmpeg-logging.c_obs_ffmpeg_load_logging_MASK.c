#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  active_log_contexts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cached_log_contexts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ffmpeg_log_callback ; 
 int /*<<< orphan*/  log_contexts_mutex ; 
 int logging_initialized ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	FUNC1(active_log_contexts);
	FUNC1(cached_log_contexts);

	if (FUNC2(&log_contexts_mutex, NULL) == 0) {
		FUNC0(ffmpeg_log_callback);
		logging_initialized = true;
	}
}