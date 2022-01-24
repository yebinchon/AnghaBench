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
typedef  size_t uint32_t ;
struct obs_source {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  channels_mutex; struct obs_source** channels; } ;
typedef  TYPE_1__ obs_view_t ;
typedef  struct obs_source obs_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUX_VIEW ; 
 size_t MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_source*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC3 (struct obs_source*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct obs_source*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(obs_view_t *view, uint32_t channel,
			 obs_source_t *source)
{
	struct obs_source *prev_source;

	FUNC0(channel < MAX_CHANNELS);

	if (!view)
		return;
	if (channel >= MAX_CHANNELS)
		return;

	FUNC5(&view->channels_mutex);

	FUNC2(source);

	prev_source = view->channels[channel];
	view->channels[channel] = source;

	FUNC6(&view->channels_mutex);

	if (source)
		FUNC1(source, AUX_VIEW);

	if (prev_source) {
		FUNC3(prev_source, AUX_VIEW);
		FUNC4(prev_source);
	}
}