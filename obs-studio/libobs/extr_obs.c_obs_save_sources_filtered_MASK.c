#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct obs_core_data {int /*<<< orphan*/  sources_mutex; TYPE_3__* first_source; } ;
struct TYPE_9__ {scalar_t__ next; int /*<<< orphan*/  private; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_2__ context; TYPE_1__ info; } ;
typedef  TYPE_3__ obs_source_t ;
typedef  scalar_t__ (* obs_save_source_filter_cb ) (void*,TYPE_3__*) ;
typedef  int /*<<< orphan*/  obs_data_t ;
typedef  int /*<<< orphan*/  obs_data_array_t ;
struct TYPE_11__ {struct obs_core_data data; } ;

/* Variables and functions */
 scalar_t__ OBS_SOURCE_TYPE_FILTER ; 
 TYPE_7__* obs ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

obs_data_array_t *FUNC6(obs_save_source_filter_cb cb,
					    void *data_)
{
	if (!obs)
		return NULL;

	struct obs_core_data *data = &obs->data;
	obs_data_array_t *array;
	obs_source_t *source;

	array = FUNC0();

	FUNC4(&data->sources_mutex);

	source = data->first_source;

	while (source) {
		if ((source->info.type != OBS_SOURCE_TYPE_FILTER) != 0 &&
		    !source->context.private && cb(data_, source)) {
			obs_data_t *source_data = FUNC3(source);

			FUNC1(array, source_data);
			FUNC2(source_data);
		}

		source = (obs_source_t *)source->context.next;
	}

	FUNC5(&data->sources_mutex);

	return array;
}