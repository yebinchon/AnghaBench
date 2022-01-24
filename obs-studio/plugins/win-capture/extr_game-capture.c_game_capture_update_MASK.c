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
struct game_capture_config {scalar_t__ scale_cx; scalar_t__ scale_cy; scalar_t__ mode; int /*<<< orphan*/  priority; int /*<<< orphan*/  executable; int /*<<< orphan*/  class; int /*<<< orphan*/  title; int /*<<< orphan*/  hook_rate; scalar_t__ force_scaling; } ;
struct game_capture {int error_acquiring; int activate_hook; int retry_interval; int wait_for_target_startup; int initial_config; struct game_capture_config config; int /*<<< orphan*/  priority; int /*<<< orphan*/  executable; int /*<<< orphan*/  class; int /*<<< orphan*/  title; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 scalar_t__ CAPTURE_MODE_HOTKEY ; 
 scalar_t__ CAPTURE_MODE_WINDOW ; 
 int DEFAULT_RETRY_INTERVAL ; 
 int /*<<< orphan*/  SETTING_CAPTURE_WINDOW ; 
 int FUNC0 (struct game_capture_config*,struct game_capture_config*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct game_capture_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct game_capture_config*,int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct game_capture*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void *data, obs_data_t *settings)
{
	struct game_capture *gc = data;
	struct game_capture_config cfg;
	bool reset_capture = false;
	const char *window =
		FUNC6(settings, SETTING_CAPTURE_WINDOW);

	FUNC4(&cfg, settings, window);
	reset_capture = FUNC0(&cfg, &gc->config);

	if (cfg.force_scaling && (cfg.scale_cx == 0 || cfg.scale_cy == 0)) {
		gc->error_acquiring = true;
		FUNC8("error acquiring, scale is bad");
	} else {
		gc->error_acquiring = false;
	}

	if (cfg.mode == CAPTURE_MODE_HOTKEY &&
	    gc->config.mode != CAPTURE_MODE_HOTKEY) {
		gc->activate_hook = false;
	} else {
		gc->activate_hook = !!window && !!*window;
	}

	FUNC3(&gc->config);
	gc->config = cfg;
	gc->retry_interval = DEFAULT_RETRY_INTERVAL *
			     FUNC5(gc->config.hook_rate);
	gc->wait_for_target_startup = false;

	FUNC2(&gc->title);
	FUNC2(&gc->class);
	FUNC2(&gc->executable);

	if (cfg.mode == CAPTURE_MODE_WINDOW) {
		FUNC1(&gc->title, gc->config.title);
		FUNC1(&gc->class, gc->config.class);
		FUNC1(&gc->executable, gc->config.executable);
		gc->priority = gc->config.priority;
	}

	if (!gc->initial_config) {
		if (reset_capture) {
			FUNC7(gc);
		}
	} else {
		gc->initial_config = false;
	}
}