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
struct game_capture {int active; int wait_for_target_startup; int capturing; scalar_t__ retrying; int /*<<< orphan*/ * copy_texture; int /*<<< orphan*/ * texture; scalar_t__* texture_mutexes; scalar_t__ target_process; scalar_t__ global_hook_info_map; scalar_t__ keepalive_mutex; scalar_t__ hook_data_map; scalar_t__ hook_init; scalar_t__ hook_exit; scalar_t__ hook_ready; scalar_t__ hook_stop; scalar_t__ hook_restart; int /*<<< orphan*/ * app_sid; int /*<<< orphan*/ * data; int /*<<< orphan*/ * global_hook_info; int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct game_capture *gc)
{
	FUNC6(&gc->pipe);

	if (gc->hook_stop) {
		FUNC1(gc->hook_stop);
	}
	if (gc->global_hook_info) {
		FUNC2(gc->global_hook_info);
		gc->global_hook_info = NULL;
	}
	if (gc->data) {
		FUNC2(gc->data);
		gc->data = NULL;
	}

	if (gc->app_sid) {
		FUNC0(gc->app_sid);
		gc->app_sid = NULL;
	}

	FUNC3(&gc->hook_restart);
	FUNC3(&gc->hook_stop);
	FUNC3(&gc->hook_ready);
	FUNC3(&gc->hook_exit);
	FUNC3(&gc->hook_init);
	FUNC3(&gc->hook_data_map);
	FUNC3(&gc->keepalive_mutex);
	FUNC3(&gc->global_hook_info_map);
	FUNC3(&gc->target_process);
	FUNC3(&gc->texture_mutexes[0]);
	FUNC3(&gc->texture_mutexes[1]);

	if (gc->texture) {
		FUNC7();
		FUNC4(gc->texture);
		FUNC8();
		gc->texture = NULL;
	}

	if (gc->active)
		FUNC5("capture stopped");

	gc->copy_texture = NULL;
	gc->wait_for_target_startup = false;
	gc->active = false;
	gc->capturing = false;

	if (gc->retrying)
		gc->retrying--;
}