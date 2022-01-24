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
struct script_callback {struct script_callback* next; } ;
struct obs_python_script {struct script_callback* first_callback; int /*<<< orphan*/ * get_properties; int /*<<< orphan*/ * update; int /*<<< orphan*/ * save; int /*<<< orphan*/ * tick; struct obs_python_script* next_tick; struct obs_python_script** p_prev_next_tick; } ;
struct TYPE_3__ {int loaded; } ;
typedef  TYPE_1__ obs_script_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  python_loaded ; 
 int /*<<< orphan*/  FUNC4 (struct script_callback*) ; 
 int /*<<< orphan*/  tick_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct obs_python_script*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(obs_script_t *s)
{
	struct obs_python_script *data = (struct obs_python_script *)s;

	if (!s->loaded || !python_loaded)
		return;

	/* ---------------------------- */
	/* unhook tick function         */

	if (data->p_prev_next_tick) {
		FUNC2(&tick_mutex);

		struct obs_python_script *next = data->next_tick;
		if (next)
			next->p_prev_next_tick = data->p_prev_next_tick;
		*data->p_prev_next_tick = next;

		FUNC3(&tick_mutex);

		data->p_prev_next_tick = NULL;
		data->next_tick = NULL;
	}

	FUNC1();

	FUNC0(data->tick);
	FUNC0(data->save);
	FUNC0(data->update);
	FUNC0(data->get_properties);
	data->tick = NULL;
	data->save = NULL;
	data->update = NULL;
	data->get_properties = NULL;

	/* ---------------------------- */
	/* remove all callbacks         */

	struct script_callback *cb = data->first_callback;
	while (cb) {
		struct script_callback *next = cb->next;
		FUNC4(cb);
		cb = next;
	}

	/* ---------------------------- */
	/* unload                       */

	FUNC5(data);
	FUNC6();

	s->loaded = false;
}