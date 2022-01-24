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
struct obs_source {scalar_t__ removed; } ;
struct TYPE_3__ {int /*<<< orphan*/  channels_mutex; struct obs_source** channels; } ;
typedef  TYPE_1__ obs_view_t ;

/* Variables and functions */
 size_t MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(obs_view_t *view)
{
	if (!view)
		return;

	FUNC2(&view->channels_mutex);

	for (size_t i = 0; i < MAX_CHANNELS; i++) {
		struct obs_source *source;

		source = view->channels[i];

		if (source) {
			if (source->removed) {
				FUNC0(source);
				view->channels[i] = NULL;
			} else {
				FUNC1(source);
			}
		}
	}

	FUNC3(&view->channels_mutex);
}