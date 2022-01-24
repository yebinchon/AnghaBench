#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct tick_callback {int /*<<< orphan*/  param; int /*<<< orphan*/  (* tick ) (int /*<<< orphan*/ ,float) ;} ;
struct TYPE_7__ {scalar_t__ next; } ;
struct obs_source {TYPE_3__ context; } ;
struct TYPE_6__ {size_t num; struct tick_callback* array; } ;
struct obs_core_data {int /*<<< orphan*/  sources_mutex; struct obs_source* first_source; int /*<<< orphan*/  draw_callbacks_mutex; TYPE_2__ tick_callbacks; } ;
struct TYPE_5__ {int /*<<< orphan*/  video; } ;
struct TYPE_8__ {struct obs_core_data data; TYPE_1__ video; } ;

/* Variables and functions */
 TYPE_4__* obs ; 
 struct obs_source* FUNC0 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_source*,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t FUNC7(uint64_t cur_time, uint64_t last_time)
{
	struct obs_core_data *data = &obs->data;
	struct obs_source *source;
	uint64_t delta_time;
	float seconds;

	if (!last_time)
		last_time = cur_time -
			    FUNC6(obs->video.video);

	delta_time = cur_time - last_time;
	seconds = (float)((double)delta_time / 1000000000.0);

	/* ------------------------------------- */
	/* call tick callbacks                   */

	FUNC3(&obs->data.draw_callbacks_mutex);

	for (size_t i = obs->data.tick_callbacks.num; i > 0; i--) {
		struct tick_callback *callback;
		callback = obs->data.tick_callbacks.array + (i - 1);
		callback->tick(callback->param, seconds);
	}

	FUNC4(&obs->data.draw_callbacks_mutex);

	/* ------------------------------------- */
	/* call the tick function of each source */

	FUNC3(&data->sources_mutex);

	source = data->first_source;
	while (source) {
		struct obs_source *cur_source = FUNC0(source);
		source = (struct obs_source *)source->context.next;

		if (cur_source) {
			FUNC2(cur_source, seconds);
			FUNC1(cur_source);
		}
	}

	FUNC4(&data->sources_mutex);

	return cur_time;
}