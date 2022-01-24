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
struct TYPE_4__ {size_t num; int /*<<< orphan*/ * array; } ;

/* Variables and functions */
 TYPE_1__ active_log_contexts ; 
 int /*<<< orphan*/  av_log_default_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ cached_log_contexts ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  log_contexts_mutex ; 
 int logging_initialized ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	if (!logging_initialized)
		return;

	logging_initialized = false;

	FUNC0(av_log_default_callback);
	FUNC3(&log_contexts_mutex);

	for (size_t i = 0; i < active_log_contexts.num; i++) {
		FUNC1(active_log_contexts.array[i]);
	}
	for (size_t i = 0; i < cached_log_contexts.num; i++) {
		FUNC1(cached_log_contexts.array[i]);
	}

	FUNC2(active_log_contexts);
	FUNC2(cached_log_contexts);
}