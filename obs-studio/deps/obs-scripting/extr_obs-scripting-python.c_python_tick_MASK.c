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
typedef  scalar_t__ uint64_t ;
struct python_obs_timer {scalar_t__ last_ts; scalar_t__ interval; struct python_obs_timer* next; } ;
struct TYPE_2__ {scalar_t__ removed; } ;
struct python_obs_callback {TYPE_1__ base; } ;
struct obs_python_script {struct obs_python_script* next_tick; int /*<<< orphan*/  tick; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 struct obs_python_script* cur_python_script ; 
 struct obs_python_script* first_tick_script ; 
 struct python_obs_timer* first_timer ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct python_obs_callback* FUNC9 (struct python_obs_timer*) ; 
 int /*<<< orphan*/  FUNC10 (struct python_obs_timer*) ; 
 int /*<<< orphan*/  tick_mutex ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  timer_mutex ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(void *param, float seconds)
{
	struct obs_python_script *data;
	bool valid;
	uint64_t ts = FUNC5();

	FUNC6(&tick_mutex);
	valid = !!first_tick_script;
	FUNC7(&tick_mutex);

	/* --------------------------------- */
	/* process script_tick calls         */

	if (valid) {
		FUNC4();

		PyObject *args = FUNC1("(f)", seconds);

		FUNC6(&tick_mutex);
		data = first_tick_script;
		while (data) {
			cur_python_script = data;

			PyObject *py_ret =
				FUNC0(data->tick, args);
			FUNC2(py_ret);
			FUNC8();

			data = data->next_tick;
		}

		cur_python_script = NULL;

		FUNC7(&tick_mutex);

		FUNC2(args);

		FUNC12();
	}

	/* --------------------------------- */
	/* process timers                    */

	FUNC6(&timer_mutex);
	struct python_obs_timer *timer = first_timer;
	while (timer) {
		struct python_obs_timer *next = timer->next;
		struct python_obs_callback *cb = FUNC9(timer);

		if (cb->base.removed) {
			FUNC10(timer);
		} else {
			uint64_t elapsed = ts - timer->last_ts;

			if (elapsed >= timer->interval) {
				FUNC4();
				FUNC11(&cb->base);
				FUNC12();

				timer->last_ts += timer->interval;
			}
		}

		timer = next;
	}
	FUNC7(&timer_mutex);

	FUNC3(param);
}